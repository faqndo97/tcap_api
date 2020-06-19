# frozen_string_literal: true

class StadiumsController < ApplicationController
  def index
    @stadiums = Stadium.all

    render json: StadiumSerializer.new(@stadiums).to_json
  end

  def show
    render json: StadiumSerializer.new(stadium).to_json
  end

  private

  def stadium
    @stadium ||= Stadium.find(params[:id])
  end
end
