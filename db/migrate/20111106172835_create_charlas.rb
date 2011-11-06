class CreateCharlas < ActiveRecord::Migration
  def change
    create_table :charlas do |t|
      t.string :titulo
      t.text :descripcion
      t.datetime :hora
      t.string :sala
      t.integer :ordador_id

      t.timestamps
    end
  end
end
