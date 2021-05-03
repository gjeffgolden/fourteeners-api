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

ActiveRecord::Schema.define(version: 2021_05_03_224646) do

  create_table "climbing_routes", force: :cascade do |t|
    t.integer "mountain_id", null: false
    t.string "name"
    t.float "mileage"
    t.integer "elevation_gain"
    t.integer "class_rating"
    t.string "exposure"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["mountain_id"], name: "index_climbing_routes_on_mountain_id"
  end

  create_table "mountain_ranges", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "mountains", force: :cascade do |t|
    t.string "name"
    t.integer "elevation"
    t.integer "mountain_range_id", null: false
    t.float "latitude"
    t.float "longitude"
    t.integer "rank"
    t.integer "class_rating"
    t.string "image_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["mountain_range_id"], name: "index_mountains_on_mountain_range_id"
  end

  add_foreign_key "climbing_routes", "mountains"
  add_foreign_key "mountains", "mountain_ranges"
end
