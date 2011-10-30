class CreateSalas < ActiveRecord::Migration
  def change
    create_table :salas do |t|
      t.integer :cod_sala
      t.string :nombre
      t.integer :cod_ciudad
      t.integer :cod_zona
      t.integer :capacidad
      t.string :localizacion

      t.timestamps
    end
  end
end
