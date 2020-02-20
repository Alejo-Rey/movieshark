# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_02_20_022556) do

  create_table "funcions", force: :cascade do |t|
    t.string "pelicula"
    t.datetime "dia"
    t.integer "num_sillas"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "peliculas", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.string "url_imagen"
    t.datetime "dia_funcion"
    t.integer "funcion_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["funcion_id"], name: "index_peliculas_on_funcion_id"
  end

  create_table "reservas", force: :cascade do |t|
    t.datetime "dia"
    t.integer "user_id", null: false
    t.integer "funcion_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["funcion_id"], name: "index_reservas_on_funcion_id"
    t.index ["user_id"], name: "index_reservas_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.integer "cedula"
    t.string "nombre"
    t.string "correo"
    t.string "celular"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "peliculas", "funcions"
  add_foreign_key "reservas", "funcions"
  add_foreign_key "reservas", "users"
end
