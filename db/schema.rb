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

ActiveRecord::Schema.define(version: 20141203050718) do

  create_table "accessories", force: true do |t|
    t.integer  "name_id"
    t.integer  "designer_id"
    t.integer  "season_id"
    t.integer  "fit_id"
    t.integer  "color_id"
    t.integer  "fabric_id"
    t.integer  "occasion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_url"
  end

  create_table "bottoms", force: true do |t|
    t.integer  "name_id"
    t.integer  "designer_id"
    t.integer  "season_id"
    t.integer  "fit_id"
    t.integer  "color_id"
    t.integer  "fabric_id"
    t.integer  "occasion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_url"
  end

  create_table "colors", force: true do |t|
    t.string   "color"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "designers", force: true do |t|
    t.string   "designer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fabrics", force: true do |t|
    t.string   "fabric"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fits", force: true do |t|
    t.string   "fit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "names", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "occasions", force: true do |t|
    t.string   "occasion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "outerwears", force: true do |t|
    t.integer  "name_id"
    t.integer  "designer_id"
    t.integer  "season_id"
    t.integer  "fit_id"
    t.integer  "color_id"
    t.integer  "fabric_id"
    t.integer  "occasion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_url"
  end

  create_table "outfits", force: true do |t|
    t.integer  "top_id"
    t.integer  "bottom_id"
    t.integer  "outerwear_id"
    t.integer  "shoe_id"
    t.integer  "accessory_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "seasons", force: true do |t|
    t.string   "season"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shoes", force: true do |t|
    t.integer  "name_id"
    t.integer  "designer_id"
    t.integer  "season_id"
    t.integer  "fit_id"
    t.integer  "color_id"
    t.integer  "fabric_id"
    t.integer  "occasion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_url"
  end

  create_table "tops", force: true do |t|
    t.integer  "name_id"
    t.integer  "designer_id"
    t.integer  "season_id"
    t.integer  "fit_id"
    t.integer  "color_id"
    t.integer  "fabric_id"
    t.integer  "occasion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_url"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "username"
    t.string   "avatar_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "character_id",           default: 0
    t.integer  "stylist_id",             default: 0
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
