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

ActiveRecord::Schema.define(:version => 20120423022703) do

  create_table "urls", :force => true do |t|
    t.string   "shortened",                  :default => "",  :null => false
    t.text     "link",        :limit => 255, :default => ""
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
    t.integer  "http_status",                :default => 301
    t.string   "title",                      :default => ""
  end

  add_index "urls", ["link"], :name => "index_urls_on_link"
  add_index "urls", ["shortened"], :name => "index_urls_on_shortened"

end
