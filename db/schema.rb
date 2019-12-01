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

ActiveRecord::Schema.define(version: 2019_12_01_125055) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "academic_sessions", force: :cascade do |t|
    t.string "title"
    t.date "from"
    t.date "to"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "no_dues", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "academic_session_id"
    t.string "subject_ids", array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["academic_session_id"], name: "index_no_dues_on_academic_session_id"
    t.index ["user_id"], name: "index_no_dues_on_user_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.string "faculty"
    t.bigint "academic_session_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["academic_session_id"], name: "index_subjects_on_academic_session_id"
  end

  create_table "user_academic_sessions", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "academic_session_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["academic_session_id"], name: "index_user_academic_sessions_on_academic_session_id"
    t.index ["user_id"], name: "index_user_academic_sessions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role", default: 0
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "no_dues", "academic_sessions"
  add_foreign_key "no_dues", "users"
  add_foreign_key "subjects", "academic_sessions"
  add_foreign_key "user_academic_sessions", "academic_sessions"
  add_foreign_key "user_academic_sessions", "users"
end
