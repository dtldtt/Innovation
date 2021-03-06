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

ActiveRecord::Schema.define(version: 20171009111856) do

  create_table "batches", force: :cascade do |t|
    t.string "project_type"
    t.integer "year"
    t.integer "stage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.integer "batch_id"
    t.string "name"
    t.string "tutor"
    t.string "expert"
    t.integer "funds"
    t.string "institute"
    t.string "leader"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["batch_id"], name: "index_projects_on_batch_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "account"
    t.string "name"
    t.string "institute"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.index ["account"], name: "index_students_on_account", unique: true
  end

  create_table "teachers", force: :cascade do |t|
    t.string "account"
    t.string "name"
    t.string "institute"
    t.string "phone"
    t.string "email"
    t.boolean "isExpert"
    t.boolean "isAdmin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.index ["account"], name: "index_teachers_on_account", unique: true
  end

end
