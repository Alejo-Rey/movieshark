class CreatePeliculas < ActiveRecord::Migration[6.0]
  def change
    create_table :peliculas do |t|
      t.string :nombre
      t.string :descripcion
      t.string :url_imagen
      t.datetime :dia_funcion
      t.references :funcion, null: false, foreign_key: true

      t.timestamps
    end
  end
end
