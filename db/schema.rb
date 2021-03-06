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

ActiveRecord::Schema.define(version: 20140410104815) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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

  create_table "follows", force: true do |t|
    t.integer  "followable_id",                   null: false
    t.string   "followable_type",                 null: false
    t.integer  "follower_id",                     null: false
    t.string   "follower_type",                   null: false
    t.boolean  "blocked",         default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "follows", ["followable_id", "followable_type"], name: "fk_followables", using: :btree
  add_index "follows", ["follower_id", "follower_type"], name: "fk_follows", using: :btree

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
    t.boolean  "featured"
    t.boolean  "public"
    t.boolean  "casestudy"
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
    t.string   "referer"
    t.string   "linkedin"
    t.string   "shortsummary"
    t.text     "longsummary"
    t.string   "sector"
    t.string   "startupexperience"
    t.string   "bandwidth"
    t.string   "stage"
    t.boolean  "public"
    t.string   "referredby"
    t.integer  "quality"
    t.boolean  "featured"
    t.boolean  "advisor"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.string   "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.boolean  "updates"
    t.boolean  "idea"
    t.boolean  "market"
    t.boolean  "product"
    t.boolean  "launch"
    t.boolean  "revenue"
    t.boolean  "profitable"
    t.boolean  "scaling"
    t.boolean  "sale"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
