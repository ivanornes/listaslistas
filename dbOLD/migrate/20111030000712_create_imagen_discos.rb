class CreateImagenDiscos < ActiveRecord::Migration
  def change
    create_table :imagen_discos do |t|
      t.integer :cod_disco
      t.integer :cod_imagen

      t.timestamps
    end
  end
end
