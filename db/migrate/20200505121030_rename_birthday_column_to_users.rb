class RenameBirthdayColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :birthday, :birthyear
  end
end
