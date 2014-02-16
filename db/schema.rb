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

ActiveRecord::Schema.define(:version => 20140214203507) do

  create_table "authorizations", :force => true do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "platform_categories", :force => true do |t|
    t.string   "title"
    t.integer  "pos",        :default => 99
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  add_index "platform_categories", ["id", "pos"], :name => "index_platform_categories_on_id_and_pos"
  add_index "platform_categories", ["pos"], :name => "index_platform_categories_on_pos"

  create_table "platform_services", :force => true do |t|
    t.string   "title"
    t.string   "api_model"
    t.boolean  "enabled",    :default => false
    t.integer  "state"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  add_index "platform_services", ["id", "enabled"], :name => "index_platform_services_on_id_and_enabled"

  create_table "platforms", :force => true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.string   "description"
    t.integer  "category_id"
    t.integer  "type_id"
    t.string   "token"
    t.integer  "service_id"
    t.integer  "state"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "platforms", ["category_id"], :name => "index_platforms_on_category_id"
  add_index "platforms", ["service_id"], :name => "index_platforms_on_service_id"
  add_index "platforms", ["user_id", "type_id"], :name => "index_platforms_on_user_id_and_type_id"
  add_index "platforms", ["user_id"], :name => "index_platforms_on_user_id"

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "avatar_url"
  end

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

end
