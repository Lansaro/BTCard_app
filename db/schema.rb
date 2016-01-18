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

ActiveRecord::Schema.define(version: 20151214052330) do

  create_table "cards", force: :cascade do |t|
    t.string   "number"
    t.boolean  "active"
    t.string   "nickname"
    t.integer  "wallet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "cards", ["wallet_id"], name: "index_cards_on_wallet_id"

  create_table "golds", force: :cascade do |t|
    t.integer  "reviewable_id"
    t.string   "reviewable_type"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "golds", ["reviewable_type", "reviewable_id"], name: "index_golds_on_reviewable_type_and_reviewable_id"

  create_table "merchants", force: :cascade do |t|
    t.string   "name"
    t.string   "merchant_type"
    t.string   "fed_id"
    t.string   "owner"
    t.string   "phone"
    t.string   "email"
    t.string   "address"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "pos", force: :cascade do |t|
    t.string   "name"
    t.string   "category"
    t.string   "owner"
    t.string   "address"
    t.string   "phone"
    t.boolean  "active"
    t.string   "wallet_type"
    t.string   "wallet_number"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.string   "amount"
    t.integer  "card_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "status"
    t.string   "description"
    t.string   "private_key"
    t.string   "password"
    t.string   "my_password"
    t.string   "receiver_wallet"
    t.string   "sender_wallet"
  end

  add_index "transactions", ["card_id"], name: "index_transactions_on_card_id"

  create_table "types", force: :cascade do |t|
    t.string   "type"
    t.integer  "wallet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "types", ["wallet_id"], name: "index_types_on_wallet_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "transaction_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["transaction_id"], name: "index_users_on_transaction_id"

  create_table "wallets", force: :cascade do |t|
    t.string   "account"
    t.string   "private_key"
    t.boolean  "active"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.string   "password"
  end

end
