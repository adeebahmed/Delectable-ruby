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

ActiveRecord::Schema.define(version: 20170116191412) do

  create_table "customers", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foods", force: :cascade do |t|
    t.string   "foodname"
    t.string   "category"
    t.integer  "calories"
    t.float    "price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "menuname_id"
    t.integer  "menu_id"
    t.index ["menu_id"], name: "index_foods_on_menu_id"
    t.index ["menuname_id"], name: "index_foods_on_menuname_id"
  end

  create_table "menus", force: :cascade do |t|
    t.string   "menuname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string   "foods"
    t.float    "total"
    t.float    "surcharge"
    t.string   "ship"
    t.string   "billing"
    t.string   "instructions"
    t.string   "status"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "reports", force: :cascade do |t|
    t.float    "dailytotal"
    t.float    "dailysurcharge"
    t.string   "status"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
