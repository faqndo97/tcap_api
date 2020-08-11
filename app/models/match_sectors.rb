# frozen_string_literal: true

class MatchSectors < ApplicationRecord
  self.table_name = 'matches_sectors'

  belongs_to :match
  belongs_to :sector
end
