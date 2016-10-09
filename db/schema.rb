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

ActiveRecord::Schema.define(version: 20161008174317) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actors", force: :cascade do |t|
    t.string   "name"
    t.string   "movie"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "addresses", force: :cascade do |t|
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "collaborate_md_interfaces", force: :cascade do |t|
    t.integer  "vendor_id"
    t.string   "facility_name"
    t.string   "facility_id"
    t.string   "customer_name"
    t.string   "customer_id"
    t.string   "provider_number"
    t.string   "provider_last_name"
    t.string   "provider_first_name"
    t.string   "exchanger_attributes"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "interface_logs", force: :cascade do |t|
    t.integer  "patient_master_id"
    t.text     "response_message"
    t.string   "response_code"
    t.datetime "response_timestamp"
    t.string   "vendor_account"
    t.string   "vendor_id"
    t.string   "vendor_name"
    t.string   "vendor_type"
    t.string   "patient_master_uuid"
    t.string   "user_full_name"
    t.string   "user_id"
    t.string   "log"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "region_id",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string   "title"
    t.integer  "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payers", force: :cascade do |t|
    t.string   "kipu_insurance_id"
    t.string   "payer_name"
    t.string   "payer_synonym"
    t.string   "api_payer_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "name",        null: false
    t.integer  "location_id"
    t.integer  "manager_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "regions", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string   "description"
    t.datetime "deadline"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vendors", force: :cascade do |t|
    t.string   "company_name"
    t.string   "vendor_type"
    t.boolean  "vendor_status", default: true
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

end
