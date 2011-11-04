class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :hashed_password
      t.string :salt

      t.timestamps
    end
  end
end
