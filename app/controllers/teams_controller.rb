# frozen_string_literal: true

class TeamsController < ApplicationController
  def index
    @teams = Team.all

    render json: TeamSerializer.new(@teams).to_json
  end

  def show
    render json: TeamSerializer.new(team).to_json
  end

  private

  def team
    @team ||= Team.find(params[:id])
  end
end
