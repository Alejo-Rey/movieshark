class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.integer :cedula
      t.string :nombre
      t.string :correo
      t.string :celular

      t.timestamps
    end
  end
end
