class AddIndexToRoomsName < ActiveRecord::Migration[5.2]
  def change
  	add_index :rooms, :name, unique: true
  end
end
