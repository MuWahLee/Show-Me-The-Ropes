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

ActiveRecord::Schema.define(version: 20140410061527) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "guide_messages", force: true do |t|
    t.integer  "rookie_id"
    t.integer  "guide_id"
    t.string   "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "guide_reviews", force: true do |t|
    t.integer  "rookie_id"
    t.integer  "guide_id"
    t.string   "textReview"
    t.integer  "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "guides", force: true do |t|
    t.integer  "user_id"
    t.string   "guide_experience"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pins", force: true do |t|
    t.float    "lat"
    t.float    "long"
    t.integer  "guide_id"
    t.string   "activity"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
  end

  create_table "reviews", force: true do |t|
    t.integer  "review_ID"
    t.string   "reviewer"
    t.string   "reviewee"
    t.string   "review"
    t.integer  "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rookie_messages", force: true do |t|
    t.integer  "rookie_id"
    t.integer  "guide_id"
    t.string   "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rookie_reviews", force: true do |t|
    t.integer  "rookie_id"
    t.integer  "guide_id"
    t.string   "textReview"
    t.integer  "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rookies", force: true do |t|
    t.integer  "user_id"
    t.string   "rookie_experience"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "salt"
    t.string   "fish"
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "expires_at"
    t.string   "first_name"
    t.string   "last_name"
  end

end
