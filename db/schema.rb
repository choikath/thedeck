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

ActiveRecord::Schema.define(version: 20160210214636) do

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.text     "subtitle"
    t.string   "score"
    t.string   "oldscore"
    t.text     "description"
    t.boolean  "complete"
    t.boolean  "backlog"
    t.datetime "datecreated"
    t.datetime "datecompleted"
    t.datetime "datereviewed"
    t.boolean  "approved"
    t.datetime "dateapproved"
    t.datetime "dateedited"
    t.string   "sendto"
    t.boolean  "active"
    t.boolean  "exists"
    t.boolean  "visiblepenn"
    t.boolean  "visibleRoy"
    t.boolean  "visibleBrian"
    t.boolean  "visibleDamien"
    t.boolean  "visibleBill"
    t.boolean  "visibleNeha"
    t.boolean  "visibleSubha"
    t.boolean  "visiblemhealth"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "user_ids",       default: "[]"
    t.boolean  "needs_irb",      default: false
    t.boolean  "done_irb",       default: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.boolean  "admin",       default: false
    t.string   "session_key"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.boolean  "needs_hipaa", default: true
    t.boolean  "needs_csa",   default: true
    t.boolean  "needs_ipa",   default: true
    t.boolean  "done_hipaa",  default: false
    t.boolean  "done_csa",    default: false
    t.boolean  "done_ipa",    default: false
    t.string   "usertype",    default: ""
    t.string   "title",       default: ""
    t.string   "school",      default: ""
  end

end
