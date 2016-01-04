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

ActiveRecord::Schema.define(version: 20151229021406) do

  create_table "clients", force: :cascade do |t|
    t.string   "clientname"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "registrations", force: :cascade do |t|
    t.string "name"
    t.string "lastname"
    t.text   "address"
    t.string "suburb"
    t.text   "postcode"
    t.string "telephone"
    t.string "private_health_fund"
    t.string "occupation"
    t.string "email"
    t.string "newsletter"
    t.string "exercise_routine"
    t.string "reference"
    t.text   "past_medical_history"
    t.text   "medication"
    t.text   "symptoms"
    t.string "conditions"
    t.text   "other_experience"
    t.string "preference"
    t.string "body_area"
  end

end
