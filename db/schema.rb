# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2024_03_13_202607) do

  create_table "books", force: :cascade do |t|
    t.string "name"
    t.string "author"
    t.integer "library_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["library_id"], name: "index_books_on_library_id"
  end

  create_table "lend_books", force: :cascade do |t|
    t.date "borrowed"
    t.date "return"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id", null: false
    t.integer "books_id", null: false
    t.index ["books_id"], name: "index_lend_books_on_books_id"
    t.index ["user_id"], name: "index_lend_books_on_user_id"
  end

  create_table "libraries", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "type_of_users", force: :cascade do |t|
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user2s", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "email"
    t.integer "user_type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_type_id"], name: "index_user2s_on_user_type_id"
  end

  create_table "user_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "email"
    t.integer "typeOfUser_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["typeOfUser_id"], name: "index_users_on_typeOfUser_id"
  end

  add_foreign_key "books", "libraries"
  add_foreign_key "lend_books", "books", column: "books_id"
  add_foreign_key "lend_books", "users"
  add_foreign_key "user2s", "user_types"
  add_foreign_key "users", "typeOfUsers"
end
