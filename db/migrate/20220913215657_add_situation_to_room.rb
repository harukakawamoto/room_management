class AddSituationToRoom < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms, :stuation, :string
  end
end
