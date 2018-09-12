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

ActiveRecord::Schema.define(version: 2018_09_11_214430) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "custom_logs", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "journal_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["journal_id"], name: "index_custom_logs_on_journal_id"
  end

  create_table "daily_logs", force: :cascade do |t|
    t.bigint "journal_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["journal_id"], name: "index_daily_logs_on_journal_id"
  end

  create_table "future_logs", force: :cascade do |t|
    t.integer "number_of_months", default: 6, null: false
    t.bigint "journal_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["journal_id"], name: "index_future_logs_on_journal_id"
  end

  create_table "future_months", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "future_log_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["future_log_id"], name: "index_future_months_on_future_log_id"
  end

  create_table "journals", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_journals_on_user_id"
  end

  create_table "logs", force: :cascade do |t|
    t.text "description", null: false
    t.string "loggable_type"
    t.bigint "loggable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["loggable_type", "loggable_id"], name: "index_logs_on_loggable_type_and_loggable_id"
  end

  create_table "monthly_logs", force: :cascade do |t|
    t.string "month"
    t.bigint "journal_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["journal_id"], name: "index_monthly_logs_on_journal_id"
  end

  create_table "monthly_types", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "monthly_log_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["monthly_log_id"], name: "index_monthly_types_on_monthly_log_id"
  end

  create_table "states", force: :cascade do |t|
    t.string "name", default: "finished", null: false
    t.string "symbol", default: "x", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "types", force: :cascade do |t|
    t.string "name", default: "simple log", null: false
    t.string "symbol", default: ".", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "avatar"
    t.boolean "admin", default: false, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "custom_logs", "journals"
  add_foreign_key "daily_logs", "journals"
  add_foreign_key "future_logs", "journals"
  add_foreign_key "future_months", "future_logs"
  add_foreign_key "journals", "users"
  add_foreign_key "monthly_logs", "journals"
  add_foreign_key "monthly_types", "monthly_logs"
end
