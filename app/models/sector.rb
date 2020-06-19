# frozen_string_literal: true

class Sector < ApplicationRecord
  belongs_to :stadium

  validates :name, presence: true
end
