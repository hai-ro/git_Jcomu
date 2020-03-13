class AddPlayerLinkToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :player_link, :text
  end
end
