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

ActiveRecord::Schema.define(version: 20170710190754) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "examples", force: :cascade do |t|
    t.text     "text",       null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_examples_on_user_id", using: :btree
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title",       null: false
    t.text     "body",        null: false
    t.date     "date_posted", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_posts_on_user_id", using: :btree
  end

  create_table "projects", force: :cascade do |t|
    t.string   "title",       null: false
    t.string   "link",        null: false
    t.string   "front_end",   null: false
    t.string   "back_end",    null: false
    t.text     "description", null: false
    t.string   "image",       null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id",     null: false
    t.index ["user_id"], name: "index_projects_on_user_id", using: :btree
  end

  create_table "technologies", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id",    null: false
    t.index ["user_id"], name: "index_technologies_on_user_id", using: :btree
  end

  create_table "tools", force: :cascade do |t|
    t.integer  "project_id",    null: false
    t.integer  "technology_id", null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["project_id"], name: "index_tools_on_project_id", using: :btree
    t.index ["technology_id"], name: "index_tools_on_technology_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "token",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["token"], name: "index_users_on_token", unique: true, using: :btree
  end

  add_foreign_key "examples", "users"
  add_foreign_key "posts", "users"
  add_foreign_key "projects", "users"
  add_foreign_key "technologies", "users"
  add_foreign_key "tools", "projects"
  add_foreign_key "tools", "technologies"
end
