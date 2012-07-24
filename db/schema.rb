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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120724135701) do

  create_table "ayc_flows", :force => true do |t|
    t.integer  "session_id"
    t.integer  "flow_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ayc_offer_sets", :force => true do |t|
    t.string   "nick_name"
    t.datetime "start_time"
    t.datetime "end_time"
    t.string   "status"
    t.integer  "limit"
    t.boolean  "default_flag"
    t.string   "forcing_id"
    t.integer  "priority"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "ayc_sets", :force => true do |t|
    t.integer  "session_id"
    t.integer  "ayc_offer_set_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "flows", :force => true do |t|
    t.string   "nick_name"
    t.datetime "start_time"
    t.datetime "end_time"
    t.string   "status"
    t.integer  "limit"
    t.boolean  "default_flag"
    t.string   "forcing_id"
    t.integer  "priority"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "offer_sets", :force => true do |t|
    t.integer  "ayc_offer_set_id"
    t.integer  "offer_id"
    t.boolean  "required_flag"
    t.integer  "display_order"
    t.time     "reg_delay"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "offers", :force => true do |t|
    t.string   "nick_name"
    t.string   "name_api_server"
    t.boolean  "redirectable_flag"
    t.string   "status"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "page_flows", :force => true do |t|
    t.integer  "page_id"
    t.integer  "flow_id"
    t.integer  "display_order"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "pages", :force => true do |t|
    t.integer  "type"
    t.text     "html"
    t.text     "js"
    t.text     "css"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sessions", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "uid"
    t.string   "username"
    t.string   "email"
    t.string   "first_name"
    t.string   "password"
    t.string   "password_salt"
    t.integer  "age"
    t.string   "gender"
    t.string   "location"
    t.string   "relationship_status"
    t.string   "interested_in"
    t.date     "birthday"
    t.string   "status"
    t.string   "country"
    t.string   "picture"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

end
