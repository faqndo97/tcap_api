# frozen_string_literal: true

class Stadium < ApplicationRecord
  self.table_name = 'stadiums'

  validates :name, presence: true
end
