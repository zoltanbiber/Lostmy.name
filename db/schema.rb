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

ActiveRecord::Schema.define(version: 20160423182222) do

  create_table "users", force: :cascade do |t|
    t.string   "unique_code",           limit: 255
    t.string   "relationship_to_child", limit: 255
    t.float    "child_age",             limit: 24
    t.string   "purchase_occasion",     limit: 255
    t.string   "gender",                limit: 255
    t.integer  "age",                   limit: 4
    t.boolean  "has_children"
    t.string   "email",                 limit: 255
    t.datetime "started_survey_at"
    t.datetime "submitted_survey_at"
    t.string   "network_id",            limit: 255
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

end
