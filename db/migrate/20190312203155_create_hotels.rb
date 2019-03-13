class CreateHotels < ActiveRecord::Migration[5.2]
  def change
    create_table :hotels do |t|
      t.string :name, null => false
      t.string :description
      t.string :AddressLine1
      t.string :AddressLine2
      t.string :City
      t.string :State
      t.string :Zip
      t.string :Phone
      t.decimal :Price
  
      t.timestamps
    end
  end
end
