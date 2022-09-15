class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :room_number
      t.string :type
      t.string :name
      t.time :start_time
      t.time :finish_time
      t.text :memo

      t.timestamps
    end
  end
end
