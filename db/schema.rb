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

ActiveRecord::Schema.define(version: 20191220070748) do

  create_table "electronics", force: :cascade do |t|
    t.integer  "item_no",     limit: 4
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "desc",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "product_id", limit: 4
  end

  add_index "items", ["product_id"], name: "fk_rails_9a56345cfd", using: :btree

  create_table "products", force: :cascade do |t|
    t.integer  "model_no",           limit: 4
    t.string   "name",               limit: 255
    t.integer  "quantity",           limit: 4
    t.integer  "price",              limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 8
    t.datetime "image_updated_at"
    t.integer  "seller_id",          limit: 4
  end

  add_index "products", ["seller_id"], name: "fk_rails_82f3b66938", using: :btree

  create_table "sellers", force: :cascade do |t|
    t.string   "s_name",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "items", "products"
  add_foreign_key "products", "sellers"
end
