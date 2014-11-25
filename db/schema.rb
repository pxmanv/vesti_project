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

ActiveRecord::Schema.define(version: 20141124052537) do

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
  end

end
