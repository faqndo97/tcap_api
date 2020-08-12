# frozen_string_literal: true

class Sector < ApplicationRecord
  belongs_to :stadium

  has_many :match_sectors, class_name: 'MatchSectors'
  has_many :matches, through: :match_sectors

  validates :name, presence: true
end
