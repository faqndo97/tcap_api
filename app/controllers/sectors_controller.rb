# frozen_string_literal: true

class SectorsController < ApplicationController
  def index
    @sectors = Sector.all

    render json: SectorSerializer.new(@sectors, include: params[:include]).to_json
  end

  def show
    render json: SectorSerializer.new(sector, include: params[:include]).to_json
  end

  private

  def sector
    @sector ||= Sector.find(params[:id])
  end
end
