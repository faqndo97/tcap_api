# frozen_string_literal: true

class TeamsController < ApplicationController
  def index
    @teams = Team.all

    render json: @teams
  end

  def show
    render json: team
  end

  private

  def team
    @team ||= Team.find(params[:id])
  end
end
