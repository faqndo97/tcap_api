# frozen_string_literal: true

class Sport < ApplicationRecord
  has_many :teams

  validates :name, presence: true
end
