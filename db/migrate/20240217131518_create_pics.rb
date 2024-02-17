class CreatePics < ActiveRecord::Migration[7.1]
  def change
    create_table :pics do |t|
      t.string :title
      t.text :disc

      t.timestamps
    end
  end
end
