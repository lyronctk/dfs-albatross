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

ActiveRecord::Schema.define(version: 20160226031004) do

  create_table "contests", force: :cascade do |t|
    t.string   "name"
    t.date     "date_time"
    t.float    "entry_price"
    t.integer  "num_entries"
    t.string   "contest_type"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.float    "win"
    t.float    "expected_payoff"
  end

  create_table "golf_lineups", force: :cascade do |t|
    t.integer  "contest_id"
    t.string   "dk_name"
    t.integer  "dk_score"
    t.integer  "golfer1"
    t.integer  "golfer2"
    t.integer  "golfer3"
    t.integer  "golfer4"
    t.integer  "golfer5"
    t.integer  "golfer6"
    t.float    "probability_win"
    t.float    "probability_mc"
    t.float    "probability_mf"
    t.float    "expected_payout"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "rank"
  end

  create_table "golfers", force: :cascade do |t|
    t.string   "name"
    t.integer  "rank"
    t.integer  "score_to_par"
    t.integer  "last_update_hole"
    t.integer  "last_update_round"
    t.float    "probability_win"
    t.float    "probability_make_cut"
    t.float    "probability_mdf"
    t.string   "stats"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "contest_name"
  end

  create_table "identities", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "screenName"
    t.string   "email"
    t.string   "DK_name"
  end

end
