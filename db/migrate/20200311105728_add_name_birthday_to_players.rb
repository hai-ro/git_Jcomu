class AddNameBirthdayToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :name_birthday, :text
  end
end
