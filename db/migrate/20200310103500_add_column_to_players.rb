class AddColumnToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :birthday, :string
    add_column :players, :active_check, :boolean
  end
end
