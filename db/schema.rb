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

ActiveRecord::Schema.define(version: 20141121210744) do

  create_table "addresses", force: true do |t|
    t.string   "streetaddress"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "amenities", force: true do |t|
    t.string   "building_id"
    t.boolean  "parking"
    t.boolean  "guest_parking"
    t.boolean  "doorperson"
    t.boolean  "fitness"
    t.boolean  "biz_center"
    t.boolean  "pool"
    t.boolean  "package_receiving"
    t.boolean  "catering"
    t.boolean  "housekeeping"
    t.boolean  "party_room"
    t.boolean  "bike_storage"
    t.boolean  "storage"
    t.boolean  "dry_cleaning"
    t.boolean  "conf_room"
    t.boolean  "sundeck"
    t.boolean  "spa"
    t.boolean  "guest_stay"
    t.boolean  "restaurant"
    t.boolean  "private_club"
    t.boolean  "concierge"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "building_attributes", force: true do |t|
    t.string   "building_id"
    t.string   "ownership"
    t.integer  "unit_count"
    t.integer  "stories"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "buildinghoods", force: true do |t|
    t.string   "building_id"
    t.string   "neighborhood_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "buildings", force: true do |t|
    t.string   "name"
    t.string   "address_id"
    t.string   "image_url"
    t.text     "headline"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "favorites", force: true do |t|
    t.string   "user_id"
    t.string   "building_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "neighborhoods", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "restrictions", force: true do |t|
    t.string   "building_id"
    t.boolean  "pet"
    t.boolean  "rental"
    t.boolean  "credit"
    t.boolean  "reference"
    t.boolean  "interview"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
