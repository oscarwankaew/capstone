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

ActiveRecord::Schema[7.0].define(version: 2022_07_13_204422) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.string "date"
    t.string "time"
    t.string "location"
    t.string "event_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "time_format"
    t.string "timezone_format"
  end

  create_table "favorite_fighters", force: :cascade do |t|
    t.integer "user_id"
    t.integer "fighter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fight_nights", force: :cascade do |t|
    t.integer "fighter_id"
    t.integer "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fighters", force: :cascade do |t|
    t.string "name"
    t.string "age"
    t.string "height"
    t.string "weight"
    t.string "reach"
    t.string "stance"
    t.string "image"
    t.string "video"
    t.string "win"
    t.string "loss"
    t.string "draw"
    t.string "organization"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "live_streams", force: :cascade do |t|
    t.string "url"
    t.integer "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "selected_events", force: :cascade do |t|
    t.integer "user_id"
    t.integer "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "timezone"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
