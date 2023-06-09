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

ActiveRecord::Schema[7.0].define(version: 2023_04_12_220135) do
  create_table "spices", force: :cascade do |t|
    t.string "name"
    t.integer "quantity"
    t.string "unit"
    t.boolean "ground"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spices_users", id: false, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "spice_id", null: false
    t.index ["spice_id", "user_id"], name: "index_spices_users_on_spice_id_and_user_id"
    t.index ["user_id", "spice_id"], name: "index_spices_users_on_user_id_and_spice_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
