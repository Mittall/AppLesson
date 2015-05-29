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

ActiveRecord::Schema.define(version: 20150204085218) do

  create_table "answers", force: true do |t|
    t.integer  "question_id"
    t.boolean  "correct_answer"
    t.text     "content"
    t.string   "ans_image_file_name"
    t.string   "ans_image_content_type"
    t.integer  "ans_image_file_size"
    t.datetime "ans_image_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "documents", force: true do |t|
    t.integer  "lesson_id"
    t.string   "title"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lesson_image_infos", force: true do |t|
    t.integer  "lesson_id"
    t.string   "title"
    t.string   "lesson_image_file_name"
    t.string   "lesson_image_content_type"
    t.integer  "lesson_image_file_size"
    t.datetime "lesson_image_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lessons", force: true do |t|
    t.string   "name"
    t.string   "category"
    t.string   "level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", force: true do |t|
    t.integer  "lesson_id"
    t.string   "name"
    t.text     "content"
    t.string   "que_image_file_name"
    t.string   "que_image_content_type"
    t.integer  "que_image_file_size"
    t.datetime "que_image_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
