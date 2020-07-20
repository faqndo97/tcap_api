# frozen_string_literal: true

class MatchSectors < ApplicationRecord
  self.table_name = 'matches_sectors'

  belongs_to :match
  belongs_to :sector

  validates :available_tickets_from, presence: true
end
