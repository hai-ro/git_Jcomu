class ChangeDataTypeClubIdOfUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :club_id, :integer, limit: 8
  end
end
