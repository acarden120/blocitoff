# encoding: UTF-8
# This file is auto-generated from the current state of the database. 

# Note that this schema.rb definition is the authoritative source for your
# database schema. 

# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150415203951) do

  create_table 'items', force: true do |t|
    t.string 'name'
    t.integer 'user_id'
    t.datetime 'created_at'
    t.datetime 'updated_at'
  end

  add_index 'items', ['user_id'], name: 'index_items_on_user_id'

  create_table 'users', force: true do |t|
    t.string 'name'
    t.string 'email',                  default: '', null: false
    t.string 'encrypted_password',     default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.integer 'sign_in_count',          default: 0,  null: false
    t.datetime 'current_sign_in_at'
    t.datetime 'last_sign_in_at'
    t.string 'current_sign_in_ip'
    t.string 'last_sign_in_ip'
    t.string 'confirmation_token'
    t.datetime 'confirmed_at'
    t.datetime 'confirmation_sent_at'
    t.string 'unconfirmed_email'
    t.datetime 'created_at'
    t.datetime 'updated_at'
  end

  add_index 'users', ['email'], name: 'index_users_on_email', unique: true
  add_index 'users', ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true

end