class AddDefaultToRoom < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms, :default_type, :string
  end
end
