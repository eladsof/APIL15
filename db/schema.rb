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

ActiveRecord::Schema.define(version: 20140320195244) do

  create_table "reviewers_sessionsinreviews", force: true do |t|
    t.integer "reviewer_id"
    t.integer "sessions_in_review_id"
  end

  create_table "sessions", force: true do |t|
    t.string   "title"
    t.text     "abstract"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "speaker_id"
    t.string   "type"
  end

  create_table "sponsors", force: true do |t|
    t.string   "name"
    t.text     "about"
    t.text     "link"
    t.integer  "sponsorship_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone_number"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "type"
  end

end
