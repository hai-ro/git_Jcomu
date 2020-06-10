class AddDetailToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :detail, :text
  end
end
