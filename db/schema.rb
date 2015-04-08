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

ActiveRecord::Schema.define(version: 20150408040637) do

  create_table "answers", force: true do |t|
    t.string   "user_id"
    t.string   "question_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "content"
  end

  create_table "breakfast_images", force: true do |t|
    t.integer  "breakfast_id"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "breakfasts", force: true do |t|
    t.text     "comment"
    t.text     "explanation"
    t.time     "time"
    t.integer  "new_day_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dinner_images", force: true do |t|
    t.integer  "dinner_id"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dinners", force: true do |t|
    t.text     "comment"
    t.text     "explanation"
    t.time     "time"
    t.integer  "new_day_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "exercise_images", force: true do |t|
    t.integer  "exercise_id"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "exercises", force: true do |t|
    t.text     "comment"
    t.text     "explanation"
    t.time     "time"
    t.integer  "new_day_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lunch_images", force: true do |t|
    t.integer  "lunch_id"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lunches", force: true do |t|
    t.text     "comment"
    t.text     "explanation"
    t.time     "time"
    t.integer  "new_day_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "new_days", force: true do |t|
    t.text     "comment"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "potential_answers", force: true do |t|
    t.integer  "question_id"
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "snack_images", force: true do |t|
    t.integer  "snack_id"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "snacks", force: true do |t|
    t.text     "comment"
    t.text     "explanation"
    t.time     "time"
    t.integer  "new_day_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
