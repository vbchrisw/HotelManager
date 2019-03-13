class CreateRoomFacilitys < ActiveRecord::Migration[5.2]
  def change
    create_join_table :rooms, :facilitys
  end
end
