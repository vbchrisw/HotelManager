class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.references :room, foreign_key: true
      t.references :user, foreign_key: true
      t.datetime :startdate, :null => false
      t.datetime :enddate, :null => false
      t.integer :adults, :default => 0
      t.integer :children, :default => 0

      t.timestamps
    end
  end
end
