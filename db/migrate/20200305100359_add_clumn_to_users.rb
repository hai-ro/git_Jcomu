class AddClumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :user_name, :string
    add_column :users, :club_id, :integer
    add_column :users, :birthday, :integer
    add_column :users, :memorial_game, :string
  end
end
