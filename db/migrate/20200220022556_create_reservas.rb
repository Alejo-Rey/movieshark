class CreateReservas < ActiveRecord::Migration[6.0]
  def change
    create_table :reservas do |t|
      t.datetime :dia
      t.references :user, null: false, foreign_key: true
      t.references :funcion, null: false, foreign_key: true

      t.timestamps
    end
  end
end
