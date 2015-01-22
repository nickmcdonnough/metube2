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

ActiveRecord::Schema.define(version: 20150122202659) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string   "content"
    t.integer  "media_id"
    t.string   "media_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["media_type", "media_id"], name: "index_comments_on_media_type_and_media_id", using: :btree

  create_table "sounds", force: :cascade do |t|
    t.string   "title"
    t.string   "soundcloud_url"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "videos", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.string   "youtube_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
