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

ActiveRecord::Schema.define(version: 20170321075249) do

  create_table "ads", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "price"
    t.integer  "seller_id"
    t.string   "email"
    t.string   "img_url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "attendees", force: :cascade do |t|
    t.string   "name"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "email"
    t.index ["event_id"], name: "index_attendees_on_event_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "event_groupships", force: :cascade do |t|
    t.integer  "event_id"
    t.integer  "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_event_groupships_on_event_id"
    t.index ["group_id"], name: "index_event_groupships_on_group_id"
  end

  create_table "events", force: :cascade do |t|
    t.string   "artist"
    t.text     "description"
    t.decimal  "price_low"
    t.decimal  "price_high"
    t.date     "event_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "information"
    t.string   "location"
    t.text     "title"
    t.datetime "start_date"
    t.datetime "end_date"
    t.decimal  "price"
    t.integer  "category_id"
    t.index ["category_id"], name: "index_events_on_category_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.string   "name"
    t.string   "seat_id_seq"
    t.text     "address"
    t.decimal  "price_paid"
    t.string   "email_address"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "phone"
  end

end
