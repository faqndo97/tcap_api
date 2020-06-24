#  frozen_string_literal: true

class MatchesController < ApplicationController
  def index
    matches = Match.all

    render json: MatchSerializer.new(matches).to_json, status: :ok
  end

  def show
    render json: MatchSerializer.new(match).to_json, status: :ok
  end

  private

  def match
    @match ||= Match.find(params[:id])
  end
end
