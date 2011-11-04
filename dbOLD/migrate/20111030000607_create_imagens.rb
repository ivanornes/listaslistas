class CreateImagens < ActiveRecord::Migration
  def change
    create_table :imagens do |t|
      t.integer :cod_imagen
      t.string :url

      t.timestamps
    end
  end
end
