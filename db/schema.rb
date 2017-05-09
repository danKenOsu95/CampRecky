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

ActiveRecord::Schema.define(version: 20170421232556) do

  create_table "campers", force: :cascade do |t|
    t.string  "fullname"
    t.boolean "gender"
    t.date    "birthday"
    t.integer "age"
    t.string  "gfullname"
    t.date    "gbirthday"
    t.string  "street"
    t.string  "city"
    t.string  "state"
    t.integer "zip"
    t.string  "homephone"
    t.string  "wcphone"
    t.string  "email"
    t.string  "authguardians"
    t.string  "prohibited"
    t.boolean "medicalcompleted"
  end

  create_table "camps", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.integer  "age_min"
    t.integer  "age_max"
    t.time     "start_time"
    t.time     "end_time"
    t.time     "ext_end_time"
    t.time     "ext_start_time"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "description"
    t.integer  "fee"
    t.integer  "week_id"
    t.integer  "kid_limit"
  end

  create_table "memberships", force: :cascade do |t|
    t.integer  "camp_id"
    t.integer  "camper_id"
    t.boolean  "enrolled"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.boolean  "is_admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "weeks", force: :cascade do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "theme"
  end

end
