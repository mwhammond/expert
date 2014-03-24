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

ActiveRecord::Schema.define(version: 20140324204515) do

  create_table "advisors", force: true do |t|
    t.string   "name"
    t.string   "linkedin"
    t.text     "summary"
    t.string   "sector"
    t.string   "startupExperience"
    t.string   "bandwidth"
    t.string   "stage"
    t.text     "expertise"
    t.boolean  "public"
    t.string   "referred"
    t.integer  "quality"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "featured"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.boolean  "updates"
    t.integer  "user_id"
    t.binary   "idea"
    t.binary   "market"
    t.binary   "product"
    t.binary   "launch"
    t.binary   "revenue"
    t.binary   "profitable"
    t.binary   "scaling"
    t.binary   "sale"
  end

  create_table "startups", force: true do |t|
    t.string   "name"
    t.string   "link"
    t.string   "email"
    t.text     "bio"
    t.datetime "founded"
    t.string   "sector"
    t.string   "stage"
    t.string   "capital"
    t.text     "requests"
    t.binary   "public"
    t.binary   "featured"
    t.binary   "casestudy"
    t.integer  "quality"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.string   "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "updates"
    t.integer  "user_id"
    t.binary   "idea"
    t.binary   "market"
    t.binary   "product"
    t.binary   "launch"
    t.binary   "revenue"
    t.binary   "profitable"
    t.binary   "scaling"
    t.binary   "sale"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",                  default: false
    t.string   "name"
    t.string   "usertype"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
