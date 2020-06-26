# frozen_string_literal: true

class ApplicationController < ActionController::API
  before_action :validate_include_param, except: %i[update destroy]

  rescue_from ActiveRecord::RecordNotFound, with: :not_found
  rescue_from RailsParam::Param::InvalidParameterError,
              ArgumentError do |exception|
    exception_handler(exception, use_exception_msg: true)
  end

  cattr_reader :rescue_responses do
    Hash.new(:internal_server_error).merge!('RailsParam::Param::InvalidParameterError' => :bad_request)
  end

  private

  def not_found
    head :not_found
  end

  def validate_include_param
    param! :include, Array
  end

  def exception_handler(exception, use_exception_msg: false)
    raise exception if %w[development test].include? Rails.env

    messages = use_exception_msg ? [exception.message] : [exception_message(exception)]

    render_error_json(exception_status_code(exception), messages)
  end

  def exception_message(exception)
    I18n.t("application.api.error.#{exception_name(exception)}", default: default_exception_msg)
  end

  def exception_name(exception)
    exception.class.name.split('::').last.underscore
  end

  def default_exception_msg
    I18n.t('application.error.critical')
  end

  def exception_status_code(exception)
    exception_name = exception.class.name

    if ActionDispatch::ExceptionWrapper.rescue_responses.key?(exception_name)
      ActionDispatch::ExceptionWrapper.rescue_responses[exception_name]
    else
      rescue_responses[exception_name]
    end
  end

  def render_error_json(status, messages)
    render json: error_json(status, messages), status: status
  end

  def error_json(status, messages)
    {
      error: error_message(status),
      messages: messages
    }
  end

  def error_message(status)
    Rack::Utils::HTTP_STATUS_CODES[http_code(status)]
  end

  def http_code(status)
    Rack::Utils::SYMBOL_TO_STATUS_CODE[status]
  end
end
