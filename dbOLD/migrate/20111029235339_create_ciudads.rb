class CreateCiudads < ActiveRecord::Migration
  def change
    create_table :ciudads do |t|
      t.string :nombre
      t.integer :cod_ciudad
      t.timestamps
    end
  end
end
