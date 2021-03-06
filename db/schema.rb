# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_13_025447) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "exercise_galleries", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "muscle_groups"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "exercise_infos", force: :cascade do |t|
    t.string "name"
    t.integer "reps"
    t.integer "time"
    t.integer "sets"
    t.integer "weight_needed"
    t.string "equipment_needed"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "workout_infos_id", null: false
    t.index ["user_id"], name: "index_exercise_infos_on_user_id"
    t.index ["workout_infos_id"], name: "index_exercise_infos_on_workout_infos_id"
  end

  create_table "user_infos", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name"
    t.date "date_of_birth"
    t.string "gender"
    t.integer "weight"
    t.integer "height"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_user_infos_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "workout_infos", force: :cascade do |t|
    t.string "name"
    t.string "difficulty"
    t.string "muscle_groups"
    t.string "workout_type"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "exercise_infos_id"
    t.index ["exercise_infos_id"], name: "index_workout_infos_on_exercise_infos_id"
    t.index ["user_id"], name: "index_workout_infos_on_user_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "exercise_infos", "users"
  add_foreign_key "exercise_infos", "workout_infos", column: "workout_infos_id"
  add_foreign_key "user_infos", "users"
  add_foreign_key "workout_infos", "exercise_infos", column: "exercise_infos_id"
  add_foreign_key "workout_infos", "users"
end
