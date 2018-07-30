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

ActiveRecord::Schema.define(version: 20180729134159) do

  create_table "group_teams", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "group_id"
    t.bigint "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_group_teams_on_group_id"
    t.index ["team_id"], name: "index_group_teams_on_team_id"
  end

  create_table "groups", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "grupo"
    t.bigint "tournament_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tournament_id"], name: "index_groups_on_tournament_id"
  end

  create_table "grupo_partidas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "group_id"
    t.bigint "partida_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_grupo_partidas_on_group_id"
    t.index ["partida_id"], name: "index_grupo_partidas_on_partida_id"
  end

  create_table "partida_playoffs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "partida_id"
    t.bigint "playoff_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["partida_id"], name: "index_partida_playoffs_on_partida_id"
    t.index ["playoff_id"], name: "index_partida_playoffs_on_playoff_id"
  end

  create_table "partida_teams", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "partida_id"
    t.bigint "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["partida_id"], name: "index_partida_teams_on_partida_id"
    t.index ["team_id"], name: "index_partida_teams_on_team_id"
  end

  create_table "partidas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "numero"
    t.string "resultado"
    t.datetime "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "nome"
    t.integer "numero"
    t.string "nacionalidade"
    t.string "urlImagem"
    t.string "descricao", limit: 1000
    t.bigint "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_players_on_team_id"
  end

  create_table "playoffs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "fase"
    t.bigint "tournament_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tournament_id"], name: "index_playoffs_on_tournament_id"
  end

  create_table "teams", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "pais"
    t.string "urlBandeira"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tournaments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "titulo"
    t.string "pais"
    t.string "descricao"
    t.datetime "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "group_teams", "groups"
  add_foreign_key "group_teams", "teams"
  add_foreign_key "groups", "tournaments"
  add_foreign_key "grupo_partidas", "groups"
  add_foreign_key "grupo_partidas", "partidas"
  add_foreign_key "partida_playoffs", "partidas"
  add_foreign_key "partida_playoffs", "playoffs"
  add_foreign_key "partida_teams", "partidas"
  add_foreign_key "partida_teams", "teams"
  add_foreign_key "players", "teams"
  add_foreign_key "playoffs", "tournaments"
end
