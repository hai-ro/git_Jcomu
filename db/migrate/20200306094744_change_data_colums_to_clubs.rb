class ChangeDataColumsToClubs < ActiveRecord::Migration[5.2]
  def change
    change_column :clubs, :founding, :string
    change_column :clubs, :join, :string
  end
end
