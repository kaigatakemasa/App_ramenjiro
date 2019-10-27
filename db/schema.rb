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

ActiveRecord::Schema.define(version: 2019_10_15_083338) do

  create_table "admin_users", force: :cascade do |t|
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
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "food_images", force: :cascade do |t|
    t.integer "food_id"
    t.string "image_id"
    t.integer "image_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foods", force: :cascade do |t|
    t.integer "shop_id"
    t.string "food_name"
    t.integer "food_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "news", force: :cascade do |t|
    t.string "news_title"
    t.text "latest_news"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "opinions", force: :cascade do |t|
    t.string "opinion_title"
    t.string "opinion_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shop_images", force: :cascade do |t|
    t.integer "shop_id"
    t.string "image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shops", force: :cascade do |t|
    t.string "shop_name"
    t.string "shop_address"
    t.string "twitter_url"
    t.string "twitter_title"
    t.string "daytime_department"
    t.string "night_department"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "shop_information"
    t.string "shop_image_id"
    t.string "postal_code"
    t.text "map_url"
    t.string "regular_holiday"
  end

end
