class CreateClubs < ActiveRecord::Migration[5.2]
  def change
    create_table :clubs do |t|
      t.string :name
      t.date :founding
      t.date :join
      t.text :detail
      t.timestamps
    end
  end
end
