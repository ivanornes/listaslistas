class CreateZonas < ActiveRecord::Migration
  def change
    create_table :zonas do |t|
      t.integer :cod_zona
      t.string :nombre
      t.string :logoN
      t.string :logoR
      t.string :logoW

      t.timestamps
    end
  end
end
