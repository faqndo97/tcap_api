# frozen_string_literal: true

class CreateJoinTableMatchSector < ActiveRecord::Migration[6.0]
  def change
    create_join_table :matches, :sectors do |t|
      t.integer :total_tickets, null: false, default: 0
      t.integer :available_tickets, null: false, default: 0

      t.index %i[match_id sector_id]
      t.index %i[sector_id match_id]
    end
  end
end
