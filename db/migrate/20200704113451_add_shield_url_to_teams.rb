# frozen_string_literal: true

class AddShieldUrlToTeams < ActiveRecord::Migration[6.0]
  def change
    change_table :teams do |t|
      t.string :shield_url
    end
  end
end
