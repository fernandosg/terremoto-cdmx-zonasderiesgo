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

ActiveRecord::Schema.define(version: 20170921075236) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "pgcrypto"

  create_table "delegacions", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "nombre"
    t.uuid "entidad_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["entidad_id"], name: "index_delegacions_on_entidad_id"
  end

  create_table "entidads", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reporte_danos", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "tipo_dano_id"
    t.uuid "entidad_id"
    t.uuid "delegacion_id"
    t.string "nombre_lugar"
    t.string "descripcion"
    t.string "calle"
    t.string "numero_exterior"
    t.integer "codigo_postal"
    t.string "entre_calles"
    t.integer "personas_heridas_fallecidas"
    t.integer "personas_afectadas"
    t.text "apoyo_necesario"
    t.text "informacion_contacto"
    t.text "informacion_extra"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "direccion_completa"
    t.decimal "lat"
    t.decimal "lng"
    t.string "colonia"
    t.index ["delegacion_id"], name: "index_reporte_danos_on_delegacion_id"
    t.index ["entidad_id"], name: "index_reporte_danos_on_entidad_id"
    t.index ["tipo_dano_id"], name: "index_reporte_danos_on_tipo_dano_id"
  end

  create_table "tipo_danos", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "delegacions", "entidads"
  add_foreign_key "reporte_danos", "delegacions"
  add_foreign_key "reporte_danos", "entidads"
  add_foreign_key "reporte_danos", "tipo_danos"
end
