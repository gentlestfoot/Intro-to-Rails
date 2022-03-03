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

ActiveRecord::Schema[7.0].define(version: 2022_03_03_184532) do
  create_table "neighbourhoods", force: :cascade do |t|
    t.string "name"
    t.text "polygons"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requests", force: :cascade do |t|
    t.string "service_area"
    t.string "service_request"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "neighbourhood_id", null: false
    t.datetime "date"
    t.index ["neighbourhood_id"], name: "index_requests_on_neighbourhood_id"
  end

  create_table "trees", force: :cascade do |t|
    t.string "common_name"
    t.string "location"
    t.integer "diameter"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "neighbourhood_id", null: false
    t.index ["neighbourhood_id"], name: "index_trees_on_neighbourhood_id"
  end

  add_foreign_key "requests", "neighbourhoods"
  add_foreign_key "trees", "neighbourhoods"
end
