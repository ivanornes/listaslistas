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

ActiveRecord::Schema.define(:version => 20111030094139) do

  create_table "ciudads", :force => true do |t|
    t.string   "nombre"
    t.integer  "cod_ciudad"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "discotecas", :force => true do |t|
    t.integer  "cod_disco"
    t.string   "nombre"
    t.integer  "cod_ciudad"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "eventos", :force => true do |t|
    t.integer  "cod_evento"
    t.integer  "cod_disco"
    t.string   "nombre"
    t.string   "ofertas"
    t.string   "descripcion"
    t.integer  "caducado"
    t.date     "fecha"
    t.time     "hora"
    t.string   "estilo"
    t.boolean  "reservable"
    t.string   "logo_1"
    t.string   "logo_2"
    t.integer  "prioridad"
    t.string   "fechatexto"
    t.integer  "cod_sala"
    t.string   "logo_web"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "homes", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "imagen_discos", :force => true do |t|
    t.integer  "cod_disco"
    t.integer  "cod_imagen"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "imagen_eventos", :force => true do |t|
    t.integer  "cod_evento"
    t.integer  "cod_imagen"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "imagens", :force => true do |t|
    t.integer  "cod_imagen"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reservas", :force => true do |t|
    t.integer  "cod_reserva"
    t.integer  "cod_evento"
    t.string   "nombre"
    t.integer  "acompaniantes"
    t.string   "contacto"
    t.integer  "relaciones"
    t.string   "origen"
    t.date     "fecha"
    t.time     "hora"
    t.integer  "fijo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "salas", :force => true do |t|
    t.integer  "cod_sala"
    t.string   "nombre"
    t.integer  "cod_ciudad"
    t.integer  "cod_zona"
    t.integer  "capacidad"
    t.string   "localizacion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "zonas", :force => true do |t|
    t.integer  "cod_zona"
    t.string   "nombre"
    t.string   "logoN"
    t.string   "logoR"
    t.string   "logoW"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
