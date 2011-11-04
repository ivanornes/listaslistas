class CreateImagenEventos < ActiveRecord::Migration
  def change
    create_table :imagen_eventos do |t|
      t.integer :cod_evento
      t.integer :cod_imagen

      t.timestamps
    end
  end
end
