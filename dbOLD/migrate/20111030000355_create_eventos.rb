class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
      t.integer :cod_evento
      t.integer :cod_disco
      t.string :nombre
	  t.decimal :precio, :precision => 8, :scale => 2
      t.string :ofertas
      t.text :descripcion
      t.integer :caducado
      t.date :fecha
      t.time :hora
      t.string :estilo
      t.boolean :reservable
      t.string :logo_1
      t.string :logo_2
      t.integer :prioridad
      t.string :fechatexto
      t.integer :cod_sala
      t.string :logo_web

      t.timestamps
    end
  end
end
