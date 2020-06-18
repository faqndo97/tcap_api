# frozen_string_literal: true

class CreateStadium < ActiveRecord::Migration[6.0]
  def change
    create_table :stadiums do |t|
      t.string :name

      t.timestamps
    end
  end
end
