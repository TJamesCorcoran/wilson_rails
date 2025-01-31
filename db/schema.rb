# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2025_01_31_144510) do
  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "addresses", force: :cascade do |t|
    t.string "house_number"
    t.string "street_1"
    t.string "street_2"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bookmarks", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "part_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["part_id"], name: "index_bookmarks_on_part_id"
    t.index ["user_id"], name: "index_bookmarks_on_user_id"
  end

  create_table "part_brands", force: :cascade do |t|
    t.string "name"
    t.string "group_major"
    t.string "group_minor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parts", force: :cascade do |t|
    t.integer "part_brand_id", null: false
    t.string "oem_number"
    t.string "spec"
    t.string "subspec"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["part_brand_id"], name: "index_parts_on_part_brand_id"
  end

  create_table "po_line_items", force: :cascade do |t|
    t.integer "po_id", null: false
    t.integer "quant_whole"
    t.integer "quant_half"
    t.decimal "price_whole"
    t.decimal "price_half"
    t.decimal "price_total"
    t.decimal "commission"
    t.integer "part_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["part_id"], name: "index_po_line_items_on_part_id"
    t.index ["po_id"], name: "index_po_line_items_on_po_id"
  end

  create_table "pos", force: :cascade do |t|
    t.string "title"
    t.integer "seller_id", null: false
    t.datetime "when"
    t.integer "order_number"
    t.decimal "total_dollars"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["seller_id"], name: "index_pos_on_seller_id"
  end

  create_table "seller_vehicles", force: :cascade do |t|
    t.string "brand"
    t.string "model"
    t.string "color"
    t.string "license_plate"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sellers", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "email"
    t.json "bus_info"
    t.integer "address_id", null: false
    t.integer "seller_vehicle_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_sellers_on_address_id"
    t.index ["seller_vehicle_id"], name: "index_sellers_on_seller_vehicle_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "company_name"
    t.string "phone"
    t.integer "address_id", null: false
    t.string "url"
    t.decimal "default_profit_margin"
    t.boolean "is_broker"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_users_on_address_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "bookmarks", "parts"
  add_foreign_key "bookmarks", "users"
  add_foreign_key "parts", "part_brands"
  add_foreign_key "po_line_items", "parts"
  add_foreign_key "po_line_items", "pos"
  add_foreign_key "pos", "sellers"
  add_foreign_key "sellers", "addresses"
  add_foreign_key "sellers", "seller_vehicles"
  add_foreign_key "users", "addresses"
end
