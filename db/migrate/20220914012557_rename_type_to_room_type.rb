class RenameTypeToRoomType < ActiveRecord::Migration[6.1]
  def change
    rename_column :rooms, :type, :room_type
  end
end
