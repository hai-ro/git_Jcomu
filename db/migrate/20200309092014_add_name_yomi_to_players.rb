class AddNameYomiToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :name_yomi, :string
  end
end
