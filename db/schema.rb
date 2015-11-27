# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151127205648) do

  create_table "measurements", force: :cascade do |t|
    t.float    "neck_to_waist"
    t.float    "nape_to_waist"
    t.float    "armpit_to_waist"
    t.float    "upper_back"
    t.float    "shoulder_rise"
    t.float    "waist"
    t.float    "bust"
    t.float    "hips"
    t.string   "name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "patterns", force: :cascade do |t|
    t.string   "name"
    t.boolean  "digital"
    t.boolean  "cut"
    t.string   "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "notions"
    t.string   "fabrics"
  end

  create_table "sizes", force: :cascade do |t|
    t.string   "name"
    t.float    "bust"
    t.float    "waist"
    t.float    "hips"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "variants", force: :cascade do |t|
    t.string   "label"
    t.integer  "pattern_id"
    t.float    "yardage_44"
    t.float    "yardage_54"
    t.float    "yardage_60"
    t.float    "bust"
    t.float    "waist"
    t.float    "hips"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "measurement_id"
    t.integer  "size_id"
  end

  add_index "variants", ["measurement_id"], name: "index_variants_on_measurement_id"
  add_index "variants", ["pattern_id"], name: "index_variants_on_pattern_id"
  add_index "variants", ["size_id"], name: "index_variants_on_size_id"

end
