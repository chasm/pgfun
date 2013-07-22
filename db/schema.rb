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

ActiveRecord::Schema.define(version: 20130722224242) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: true do |t|
    t.string   "street"
    t.string   "city"
    t.string   "zip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "addresses_users", force: true do |t|
    t.integer "street_address_id"
    t.integer "user_id"
  end

  add_index "addresses_users", ["street_address_id"], name: "index_addresses_users_on_street_address_id", using: :btree
  add_index "addresses_users", ["user_id"], name: "index_addresses_users_on_user_id", using: :btree

  create_table "phone_numbers", force: true do |t|
    t.string   "digits"
    t.string   "phone_type"
    t.string   "ext"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "street_addresses", force: true do |t|
    t.string   "street"
    t.string   "city"
    t.string   "zip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "street_addresses_users", force: true do |t|
    t.integer "street_address_id"
    t.integer "user_id"
  end

  add_index "street_addresses_users", ["street_address_id"], name: "index_street_addresses_users_on_street_address_id", using: :btree
  add_index "street_addresses_users", ["user_id"], name: "index_street_addresses_users_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "age"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
