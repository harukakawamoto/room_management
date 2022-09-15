class AddPhoneToRoom < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms, :phone_num, :string
  end
end
