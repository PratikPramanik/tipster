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

ActiveRecord::Schema.define(:version => 20110325011455) do

  create_table "attachments", :force => true do |t|
    t.string   "item_file_name"
    t.string   "item_content_type"
    t.integer  "item_file_size"
    t.datetime "item_updated_at"
    t.integer  "tip_id"
  end

  create_table "districts", :force => true do |t|
    t.string   "name"
    t.string   "area"
    t.string   "email"
    t.text     "shape"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tips", :force => true do |t|
    t.integer  "district_id"
    t.string   "subject"
    t.string   "address"
    t.text     "tip"
    t.boolean  "contact",                      :default => false
    t.float    "lat",           :limit => 255
    t.float    "lng",           :limit => 255
    t.string   "contact_name"
    t.string   "contact_email"
    t.string   "contact_phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
