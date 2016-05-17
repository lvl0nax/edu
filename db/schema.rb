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

ActiveRecord::Schema.define(version: 20160517094459) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "courses", force: :cascade do |t|
    t.string   "name_ru"
    t.string   "site"
    t.text     "description_ru"
    t.boolean  "moderated",          default: false
    t.float    "price"
    t.integer  "language"
    t.integer  "provider_id"
    t.integer  "subject_id"
    t.integer  "direction_id"
    t.string   "duration_ru"
    t.datetime "start_date"
    t.datetime "end_date"
    t.boolean  "certificate",        default: false
    t.string   "seo_title_ru"
    t.string   "seo_keywords_ru"
    t.text     "seo_description_ru"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.integer  "user_id"
    t.string   "seo_title_en"
    t.string   "seo_keywords_en"
    t.string   "seo_description_en"
    t.string   "duration_en"
    t.string   "name_en"
    t.string   "description_en"
  end

  create_table "directions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "subject_id"
    t.string   "seo_title"
    t.string   "seo_keywords"
    t.text     "seo_description"
  end

  create_table "feed_backs", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "providers", force: :cascade do |t|
    t.string   "name_ru"
    t.string   "site"
    t.text     "description_ru"
    t.boolean  "moderated",          default: false
    t.string   "seo_title_ru"
    t.string   "seo_keywords_ru"
    t.text     "seo_description_ru"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "seo_title_en"
    t.string   "seo_keywords_en"
    t.string   "seo_description_en"
    t.string   "name_en"
    t.text     "description_en"
    t.integer  "courses_count",      default: 0
    t.string   "icon"
    t.integer  "currency"
    t.boolean  "free_content"
    t.float    "average_price"
    t.integer  "user_id"
    t.integer  "subject_ids",                                     array: true
    t.integer  "direction_ids",                                   array: true
  end

  add_index "providers", ["direction_ids"], name: "index_providers_on_direction_ids", using: :gin
  add_index "providers", ["subject_ids"], name: "index_providers_on_subject_ids", using: :gin

  create_table "subjects", force: :cascade do |t|
    t.string   "name_ru"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "seo_title_ru"
    t.string   "seo_keywords_ru"
    t.text     "seo_description_ru"
    t.string   "name_en"
    t.string   "icon"
    t.string   "seo_title_en"
    t.string   "seo_keywords_en"
    t.string   "seo_description_en"
    t.integer  "courses_count",      default: 0
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "nickname"
    t.string   "occupation"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
