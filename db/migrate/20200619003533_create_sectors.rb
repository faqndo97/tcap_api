# frozen_string_literal: true

class CreateSectors < ActiveRecord::Migration[6.0]
  def change
    create_table :sectors do |t|
      t.string :name
      t.references :stadium, null: false, foreign_key: { to_table: 'stadiums' }

      t.timestamps
    end
  end
end
