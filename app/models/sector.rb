# frozen_string_literal: true

class Sector < ApplicationRecord
  belongs_to :stadium

  has_many :match_sectors, class_name: 'MatchSectors'
  has_many :matches, through: :match_sectors

  validates :name, presence: true

  def total_tickets(match_id)
    match_sectors.find_by_match_id(match_id).total_tickets
  end
end
