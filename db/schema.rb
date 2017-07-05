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

ActiveRecord::Schema.define(version: 20170531172535) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "fotos", force: :cascade do |t|
    t.string "title"
    t.bigint "vendor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.index ["vendor_id"], name: "index_fotos_on_vendor_id"
  end

  create_table "inventories", force: :cascade do |t|
    t.string "product_name"
    t.string "brand_name"
    t.integer "item_id"
    t.string "upc_code"
    t.string "color"
    t.string "department"
    t.string "size"
    t.string "condition"
    t.string "fabric_type"
    t.string "shipping_weight"
    t.string "sku"
    t.string "asin"
    t.integer "quantity"
    t.string "cost_price"
    t.string "sell_price"
    t.string "key_product_features"
    t.text "product_description"
    t.string "search_terms"
    t.string "status"
    t.string "listing_in_usa"
    t.string "listing_in_canada"
    t.string "listing_in_mexico"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photos", force: :cascade do |t|
    t.string "title"
    t.bigint "inventory_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.index ["inventory_id"], name: "index_photos_on_inventory_id"
  end

  create_table "pictures", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vendors", force: :cascade do |t|
    t.string "company"
    t.string "contact_name"
    t.string "phone"
    t.string "email"
    t.string "moq"
    t.string "cost_per_item"
    t.string "payment_method"
    t.string "terms"
    t.string "turnover"
    t.string "returns"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "widgets", id: :serial, force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "stock"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_foreign_key "fotos", "vendors"
  add_foreign_key "photos", "inventories"
end
