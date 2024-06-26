# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_06_26_163808) do
  create_table "ailments", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.integer "zoneCount"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "monsters", force: :cascade do |t|
    t.string "name"
    t.string "size"
    t.string "species"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "monsters_ailments", force: :cascade do |t|
    t.integer "monster_id", null: false
    t.integer "ailment_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ailment_id"], name: "index_monsters_ailments_on_ailment_id"
    t.index ["monster_id"], name: "index_monsters_ailments_on_monster_id"
  end

  create_table "monsters_locations", force: :cascade do |t|
    t.integer "monster_id", null: false
    t.integer "location_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_monsters_locations_on_location_id"
    t.index ["monster_id"], name: "index_monsters_locations_on_monster_id"
  end

  add_foreign_key "monsters_ailments", "ailments"
  add_foreign_key "monsters_ailments", "monsters"
  add_foreign_key "monsters_locations", "locations"
  add_foreign_key "monsters_locations", "monsters"
end
