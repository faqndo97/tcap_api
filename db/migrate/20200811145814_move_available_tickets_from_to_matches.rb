# frozen_string_literal: true

class MoveAvailableTicketsFromToMatches < ActiveRecord::Migration[6.0]
  def up
    remove_column :matches_sectors, :available_tickets_from, :date
    add_column :matches, :available_tickets_from, :date, null: false
  end

  def down
    add_column :matches_sectors, :available_tickets_from, :date, null: false
    remove_column :matches, :available_tickets_from, :date
  end
end
