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

ActiveRecord::Schema.define(version: 20140221214113) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: true do |t|
    t.string   "heading"
    t.text     "story"
    t.datetime "publish_date"
    t.string   "author"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
    t.integer  "author_id"
  end

  add_index "articles", ["author_id"], name: "index_articles_on_author_id", using: :btree

  create_table "authors", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.text     "comment"
    t.datetime "publish_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "article_id"
  end

  add_index "comments", ["article_id"], name: "index_comments_on_article_id", using: :btree

  create_table "reviews", force: true do |t|
    t.float    "rating",     default: 0.0
    t.integer  "article_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reviews", ["article_id"], name: "index_reviews_on_article_id", using: :btree

end
