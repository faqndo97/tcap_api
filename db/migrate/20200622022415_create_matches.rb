# frozen_string_literal: true

class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.references :home_team, null: false, foreign_key: { to_table: 'teams' }
      t.references :away_team, null: false, foreign_key: { to_table: 'teams' }
      t.references :stadium, null: false, foreign_key: { to_table: 'stadiums' }
      t.references :sport, null: false
      t.datetime :start_date, null: false

      t.timestamps
    end
  end
end
