class CreateFuncions < ActiveRecord::Migration[6.0]
  def change
    create_table :funcions do |t|
      t.string :pelicula
      t.datetime :dia
      t.integer :num_sillas

      t.timestamps
    end
  end
end
