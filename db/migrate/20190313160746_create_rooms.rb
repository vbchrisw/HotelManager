class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.integer :roomNumber, :null => false
      t.string :name, :null => false
      t.text :description
      t.boolean :reserved :default => false
      t.references :hotel, foreign_key: true

      t.timestamps
    end
  end
end
