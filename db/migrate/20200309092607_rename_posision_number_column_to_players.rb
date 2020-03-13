class RenamePosisionNumberColumnToPlayers < ActiveRecord::Migration[5.2]
  def change
    rename_column :players, :posision_number, :position
  end
end
