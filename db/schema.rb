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

ActiveRecord::Schema.define(version: 20180803203110) do

  create_table "foods", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.float "price"
    t.integer "menu_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["menu_id"], name: "index_foods_on_menu_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.float "quantity"
    t.float "total_price"
    t.integer "food_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["food_id"], name: "index_ingredients_on_food_id"
  end

  create_table "menus", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.text "description"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "portions", force: :cascade do |t|
    t.integer "food_id"
    t.integer "sale_id"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "total"
    t.index ["food_id"], name: "index_portions_on_food_id"
    t.index ["sale_id"], name: "index_portions_on_sale_id"
  end

  create_table "sales", force: :cascade do |t|
    t.string "status"
    t.float "total"
    t.datetime "shippedDate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
