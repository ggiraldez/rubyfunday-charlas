class CreateOradors < ActiveRecord::Migration
  def change
    create_table :oradors do |t|
      t.string :nombre
      t.string :twitter
      t.string :email

      t.timestamps
    end
  end
end
