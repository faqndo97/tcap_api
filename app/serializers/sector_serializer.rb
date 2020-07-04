# frozen_string_literal: true

class SectorSerializer
  include FastJsonapi::ObjectSerializer

  belongs_to :stadium

  attributes :name

  attribute :total_tickets, if: proc { |_, params| params[:include_match_tickets_info] == true } do |sector, params|
    sector.match_sectors.find_by_match_id(params[:match_id]).total_tickets
  end

  attribute :available_tickets, if: proc { |_, params| params[:include_match_tickets_info] == true } do |sector, params|
    sector.match_sectors.find_by_match_id(params[:match_id]).available_tickets
  end

  def total_tickets(match_id)
    sector.match_sectors.find_by_match_id(match_id).total_tickets
  end
end
