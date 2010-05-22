# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100521181944) do

  create_table "stations", :force => true do |t|
    t.string   "color",                                      :default => "",  :null => false
    t.float    "lat",                                        :default => 0.0, :null => false
    t.float    "lng",                                        :default => 0.0, :null => false
    t.string   "name",                                       :default => "",  :null => false
    t.integer  "connected_id",                               :default => 0,   :null => false
    t.integer  "external_id",                                :default => 0,   :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "distance",     :precision => 8, :scale => 3
  end

  create_table "trains", :force => true do |t|
    t.string   "serial",     :default => "", :null => false
    t.string   "status",     :default => "", :null => false
    t.time     "start_time"
    t.string   "color",      :default => "", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
