# frozen_string_literal: true

class Match < ApplicationRecord
  belongs_to :home_team, class_name: 'Team'
  belongs_to :away_team, class_name: 'Team'
  belongs_to :sport
  belongs_to :stadium, class_name: 'Stadium'

  has_many :match_sectors, class_name: 'MatchSectors'
  has_many :sectors, through: :match_sectors

  validates :start_date, presence: true
  validates :available_tickets_from, presence: true
end
