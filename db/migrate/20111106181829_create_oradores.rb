class CreateOradores < ActiveRecord::Migration
  def change
    create_table :oradores do |t|
      t.string :nombre
      t.string :twitter
      t.string :email

      t.timestamps
    end
  end
end
