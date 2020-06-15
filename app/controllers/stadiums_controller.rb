# frozen_string_literal: true

class StadiumsController < ApplicationController
  def index
    @stadiums = Stadium.all

    render json: @stadiums
  end

  def show
    render json: stadium
  end

  private

  def stadium
    @stadium ||= Stadium.find(params[:id])
  end
end
