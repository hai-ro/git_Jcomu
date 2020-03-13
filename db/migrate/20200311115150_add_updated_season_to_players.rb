class AddUpdatedSeasonToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :updated_season, :string
  end
end
