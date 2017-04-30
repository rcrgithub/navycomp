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

ActiveRecord::Schema.define(version: 20170430053540) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blhouses", force: :cascade do |t|
    t.integer  "nvoccs_customer_id"
    t.integer  "blmaster_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["blmaster_id"], name: "index_blhouses_on_blmaster_id", using: :btree
    t.index ["nvoccs_customer_id"], name: "index_blhouses_on_nvoccs_customer_id", using: :btree
  end

  create_table "blmasters", force: :cascade do |t|
    t.integer  "nvoccs_shipping_company_id"
    t.integer  "ship_id"
    t.string   "container_list"
    t.string   "goods_origin"
    t.string   "goods_destiny"
    t.date     "docking_date"
    t.string   "origin_destiny_code"
    t.date     "departure"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["nvoccs_shipping_company_id"], name: "index_blmasters_on_nvoccs_shipping_company_id", using: :btree
    t.index ["ship_id"], name: "index_blmasters_on_ship_id", using: :btree
  end

  create_table "cities", force: :cascade do |t|
    t.integer  "country_id"
    t.string   "city_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_cities_on_country_id", using: :btree
  end

  create_table "containers", force: :cascade do |t|
    t.integer  "shipping_company_id"
    t.string   "container_code"
    t.string   "container_type"
    t.string   "city_location"
    t.string   "country_location"
    t.boolean  "status_container"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["shipping_company_id"], name: "index_containers_on_shipping_company_id", using: :btree
  end

  create_table "containers_blmasters", force: :cascade do |t|
    t.integer "container_id"
    t.integer "blmaster_id"
    t.index ["blmaster_id"], name: "index_containers_blmasters_on_blmaster_id", using: :btree
    t.index ["container_id"], name: "index_containers_blmasters_on_container_id", using: :btree
  end

  create_table "countries", force: :cascade do |t|
    t.string   "country_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "customers", force: :cascade do |t|
    t.integer  "city_id"
    t.string   "customer_name"
    t.string   "ident_card"
    t.string   "address"
    t.string   "phone"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["city_id"], name: "index_customers_on_city_id", using: :btree
  end

  create_table "nvoccs", force: :cascade do |t|
    t.integer  "city_id"
    t.string   "nvocc_name"
    t.string   "tax_id_vat"
    t.string   "address"
    t.string   "phone"
    t.string   "email"
    t.string   "website"
    t.boolean  "status_nvocc"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["city_id"], name: "index_nvoccs_on_city_id", using: :btree
  end

  create_table "nvoccs_customers", force: :cascade do |t|
    t.integer  "customer_id"
    t.integer  "nvocc_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["customer_id"], name: "index_nvoccs_customers_on_customer_id", using: :btree
    t.index ["nvocc_id"], name: "index_nvoccs_customers_on_nvocc_id", using: :btree
  end

  create_table "nvoccs_shipping_companies", force: :cascade do |t|
    t.integer  "nvocc_id"
    t.integer  "shipping_company_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["nvocc_id"], name: "index_nvoccs_shipping_companies_on_nvocc_id", using: :btree
    t.index ["shipping_company_id"], name: "index_nvoccs_shipping_companies_on_shipping_company_id", using: :btree
  end

  create_table "shipping_companies", force: :cascade do |t|
    t.integer  "city_id"
    t.string   "shipping_comp_name"
    t.string   "tax_id_vat"
    t.string   "address"
    t.string   "phone"
    t.string   "email"
    t.string   "website"
    t.boolean  "status_company"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["city_id"], name: "index_shipping_companies_on_city_id", using: :btree
  end

  create_table "ships", force: :cascade do |t|
    t.integer  "shipping_company_id"
    t.string   "ship_name"
    t.string   "city_location"
    t.string   "country_location"
    t.boolean  "status_ship"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["shipping_company_id"], name: "index_ships_on_shipping_company_id", using: :btree
  end

  add_foreign_key "blhouses", "blmasters"
  add_foreign_key "blhouses", "nvoccs_customers"
  add_foreign_key "blmasters", "nvoccs_shipping_companies"
  add_foreign_key "blmasters", "ships"
  add_foreign_key "cities", "countries"
  add_foreign_key "containers", "shipping_companies"
  add_foreign_key "containers_blmasters", "blmasters"
  add_foreign_key "containers_blmasters", "containers"
  add_foreign_key "customers", "cities"
  add_foreign_key "nvoccs", "cities"
  add_foreign_key "nvoccs_customers", "customers"
  add_foreign_key "nvoccs_customers", "nvoccs"
  add_foreign_key "nvoccs_shipping_companies", "nvoccs"
  add_foreign_key "nvoccs_shipping_companies", "shipping_companies"
  add_foreign_key "shipping_companies", "cities"
  add_foreign_key "ships", "shipping_companies"
end
