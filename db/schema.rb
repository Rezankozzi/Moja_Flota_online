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

ActiveRecord::Schema.define(version: 2023_02_07_222248) do

  create_table "insurance_policies", force: :cascade do |t|
    t.string "insurer"
    t.datetime "begin"
    t.datetime "expire"
  end

  create_table "maintenances", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reminders", force: :cascade do |t|
    t.string "title"
    t.integer "author_id"
    t.integer "venihle_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_id"], name: "index_reminders_on_author_id"
    t.index ["venihle_id"], name: "index_reminders_on_venihle_id"
  end

  create_table "repaire_parts", force: :cascade do |t|
    t.string "title"
    t.string "number_cat"
    t.integer "service_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["service_id"], name: "index_repaire_parts_on_service_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "status"
    t.string "name"
    t.string "second_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "venihles", force: :cascade do |t|
    t.string "venihle_type"
    t.string "make"
    t.string "license_plate"
    t.string "vin"
    t.string "inspection"
    t.integer "year", null: false
    t.integer "insurance_policy_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["insurance_policy_id"], name: "index_venihles_on_insurance_policy_id"
  end

  add_foreign_key "reminders", "authors"
  add_foreign_key "reminders", "venihles"
  add_foreign_key "repaire_parts", "services"
  add_foreign_key "venihles", "insurance_policies"
end
