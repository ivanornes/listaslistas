class CreateReservas < ActiveRecord::Migration
  def change
    create_table :reservas do |t|
      t.integer :cod_reserva
      t.integer :cod_evento
      t.string :nombre
      t.integer :acompaniantes
      t.string :contacto
      t.integer :relaciones
      t.string :origen
      t.date :fecha
      t.time :hora
      t.integer :fijo

      t.timestamps
    end
  end
end
