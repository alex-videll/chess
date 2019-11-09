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

ActiveRecord::Schema.define(version: 2019_11_09_194046) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: :cascade do |t|
    t.integer "total_time_limit"
    t.integer "time_to_move_piece"
    t.datetime "ending_time"
    t.datetime "starting_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "result_id"
    t.index ["result_id"], name: "index_games_on_result_id"
    t.index ["user_id"], name: "index_games_on_user_id"
  end

  create_table "piece_moves", force: :cascade do |t|
    t.string "notation"
    t.integer "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "piece_id"
    t.bigint "player_id"
    t.bigint "game_id"
    t.index ["game_id"], name: "index_piece_moves_on_game_id"
    t.index ["piece_id"], name: "index_piece_moves_on_piece_id"
    t.index ["player_id"], name: "index_piece_moves_on_player_id"
  end

  create_table "pieces", force: :cascade do |t|
    t.string "name"
    t.string "starting_position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.float "score"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "game_id"
    t.index ["game_id"], name: "index_players_on_game_id"
    t.index ["user_id"], name: "index_players_on_user_id"
  end

  create_table "results", force: :cascade do |t|
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_rating"
    t.string "user_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "games", "results"
  add_foreign_key "games", "users"
  add_foreign_key "piece_moves", "games"
  add_foreign_key "piece_moves", "pieces"
  add_foreign_key "piece_moves", "players"
  add_foreign_key "players", "games"
  add_foreign_key "players", "users"
end
