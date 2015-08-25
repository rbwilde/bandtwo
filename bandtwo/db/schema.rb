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

ActiveRecord::Schema.define(version: 20150825185259) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bands", force: :cascade do |t|
    t.string  "name"
    t.string  "genre"
    t.boolean "explicit_lyrics", default: false
  end

  create_table "events", force: :cascade do |t|
    t.string  "date"
    t.boolean "alcohol_served", default: true
    t.integer "band_id"
    t.integer "venue_id"
  end

  add_index "events", ["band_id"], name: "index_events_on_band_id", using: :btree
  add_index "events", ["venue_id"], name: "index_events_on_venue_id", using: :btree

  create_table "venues", force: :cascade do |t|
    t.string  "name"
    t.string  "city"
    t.string  "state"
    t.boolean "family_friendly", default: false
  end

  add_foreign_key "events", "bands"
  add_foreign_key "events", "venues"
end
