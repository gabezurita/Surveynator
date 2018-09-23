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

ActiveRecord::Schema.define(version: 2018_09_21_020431) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "options", force: :cascade do |t|
    t.string "letter"
    t.string "option"
    t.bigint "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_options_on_question_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "type"
    t.text "content"
    t.integer "order"
    t.bigint "survey_id"
    t.bigint "response_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["response_id"], name: "index_questions_on_response_id"
    t.index ["survey_id"], name: "index_questions_on_survey_id"
  end

  create_table "responses", force: :cascade do |t|
    t.text "content"
    t.string "letter"
    t.string "option"
    t.integer "rating", default: 0, null: false
    t.bigint "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_responses_on_question_id"
  end

  create_table "surveys", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.bigint "owner_id"
    t.bigint "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_id"], name: "index_surveys_on_owner_id"
    t.index ["question_id"], name: "index_surveys_on_question_id"
  end

  create_table "users", force: :cascade do |t|
    t.bigint "survey_id"
    t.bigint "response_id"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["response_id"], name: "index_users_on_response_id"
    t.index ["survey_id"], name: "index_users_on_survey_id"
  end

end
