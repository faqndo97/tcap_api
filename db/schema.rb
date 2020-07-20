# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_07_04_113451) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "matches", force: :cascade do |t|
    t.bigint "home_team_id", null: false
    t.bigint "away_team_id", null: false
    t.bigint "stadium_id", null: false
    t.bigint "sport_id", null: false
    t.datetime "start_date", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["away_team_id"], name: "index_matches_on_away_team_id"
    t.index ["home_team_id"], name: "index_matches_on_home_team_id"
    t.index ["sport_id"], name: "index_matches_on_sport_id"
    t.index ["stadium_id"], name: "index_matches_on_stadium_id"
  end

  create_table "matches_sectors", id: false, force: :cascade do |t|
    t.bigint "match_id", null: false
    t.bigint "sector_id", null: false
    t.integer "total_tickets", default: 0, null: false
    t.integer "available_tickets", default: 0, null: false
    t.date "available_tickets_from", null: false
    t.index ["match_id", "sector_id"], name: "index_matches_sectors_on_match_id_and_sector_id"
    t.index ["sector_id", "match_id"], name: "index_matches_sectors_on_sector_id_and_match_id"
  end

  create_table "sectors", force: :cascade do |t|
    t.string "name"
    t.bigint "stadium_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["stadium_id"], name: "index_sectors_on_stadium_id"
  end

  create_table "sports", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stadiums", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "shield_url"
  end

  add_foreign_key "matches", "stadiums"
  add_foreign_key "matches", "teams", column: "away_team_id"
  add_foreign_key "matches", "teams", column: "home_team_id"
  add_foreign_key "sectors", "stadiums"
end
