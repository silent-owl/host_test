class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string :name
      t.string :owner
      t.string :path

      t.timestamps
    end
  end
end
