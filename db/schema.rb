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

ActiveRecord::Schema.define(version: 20160316104058) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activity_masters", force: :cascade do |t|
    t.string   "Activity_Name"
    t.string   "Active"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "branches", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "Company_Name"
    t.string   "Display_Name"
    t.string   "Web_Address"
    t.string   "First_Address"
    t.string   "Second_Address"
    t.string   "City"
    t.string   "State"
    t.string   "Country"
    t.string   "Zip_Code"
    t.string   "Region"
    t.string   "Email"
    t.string   "Mobile"
    t.string   "Phone1"
    t.string   "Phone2"
    t.string   "Fax"
    t.string   "Skype"
    t.integer  "Star_Rating"
    t.string   "Active"
    t.string   "Comments"
    t.string   "Company_Logo"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "role_masters", force: :cascade do |t|
    t.string   "Role_Name"
    t.string   "Active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "provider",               default: "email", null: false
    t.string   "uid",                    default: "",      null: false
    t.string   "encrypted_password",     default: "",      null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,       null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "name"
    t.string   "nickname"
    t.string   "image"
    t.string   "email"
    t.text     "tokens"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "Mobile_No"
    t.string   "Office_Phone"
    t.string   "Home_Phone"
    t.string   "Profile_Photo"
    t.string   "Active"
    t.integer  "branch_id"
    t.integer  "company_id"
    t.integer  "role_master_id"
  end

  add_index "users", ["branch_id"], name: "index_users_on_branch_id", using: :btree
  add_index "users", ["company_id"], name: "index_users_on_company_id", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["role_master_id"], name: "index_users_on_role_master_id", using: :btree
  add_index "users", ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true, using: :btree

  add_foreign_key "users", "branches"
  add_foreign_key "users", "companies"
  add_foreign_key "users", "role_masters"
end
