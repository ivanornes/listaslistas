class CreateDiscotecas < ActiveRecord::Migration
  def change
    create_table :discotecas do |t|
      t.integer :cod_disco
      t.string :nombre
      t.integer :cod_ciudad

      t.timestamps
    end
  end
end
