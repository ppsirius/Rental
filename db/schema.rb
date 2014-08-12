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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20140812103603) do

  create_table "brands", force: true do |t|
    t.string   "brand_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "models", force: true do |t|
    t.string   "model_name"
    t.integer  "brand_id"
=======
ActiveRecord::Schema.define(version: 20140812103356) do

  create_table "rents", force: true do |t|
    t.integer  "client_id"
    t.integer  "car_id"
>>>>>>> 62a9767ebb3ec2cb971cbd69551dc7e2182ce400
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
