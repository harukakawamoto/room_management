class AddFloorToRoom < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms, :floor_number, :string

  end
end
