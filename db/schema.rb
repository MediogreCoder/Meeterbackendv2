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

ActiveRecord::Schema[7.0].define(version: 2022_10_21_192627) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "faqs", force: :cascade do |t|
    t.string "full_name"
    t.string "topic"
    t.string "topic_body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mentorings", force: :cascade do |t|
    t.string "mentee_full_name"
    t.string "mentor_full_name"
    t.string "activity"
    t.boolean "action_needed"
    t.boolean "confirmed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messagings", force: :cascade do |t|
    t.string "mentee_full_name"
    t.string "mentor_full_name"
    t.string "message_owner"
    t.string "message_body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.string "mentee_full_name"
    t.string "mentor_full_name"
    t.integer "rating_stars"
    t.string "review_body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resources", force: :cascade do |t|
    t.string "full_name"
    t.string "topic"
    t.string "topic_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
