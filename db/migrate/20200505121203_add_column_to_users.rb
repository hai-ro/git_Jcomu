class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :birthmonth, :integer
    add_column :users, :birthday, :integer
  end
end
