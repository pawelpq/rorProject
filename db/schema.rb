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

ActiveRecord::Schema.define(version: 20140605134206) do

  create_table "categories", force: true do |t|
    t.string   "Name"
    t.text     "Description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "f_threads", force: true do |t|
    t.string   "Subject"
    t.datetime "Date"
    t.integer  "Subcategory_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "f_threads", ["Subcategory_id"], name: "index_f_threads_on_Subcategory_id"

  create_table "posts", force: true do |t|
    t.datetime "Date"
    t.text     "Content"
    t.integer  "FThread_id"
    t.integer  "User_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "posts", ["FThread_id"], name: "index_posts_on_FThread_id"
  add_index "posts", ["User_id"], name: "index_posts_on_User_id"

  create_table "subcategories", force: true do |t|
    t.string   "Name"
    t.text     "Description"
    t.integer  "Category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "subcategories", ["Category_id"], name: "index_subcategories_on_Category_id"

  create_table "users", force: true do |t|
    t.string   "Login"
    t.string   "Password"
    t.string   "Email"
    t.binary   "GetEmail"
    t.string   "ImgPath"
    t.string   "Previlege"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
