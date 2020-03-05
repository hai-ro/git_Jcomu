class CreateClubs < ActiveRecord::Migration[5.2]
  def change
    create_table :clubs do |t|
      t.string :name  #クラブの名称
      t.date :founding #クラブの設立年
      t.date :join  #クラブのＪリーグ加盟年
      t.text :detail  #クラブ概要
      t.timestamps
    end
  end
end
