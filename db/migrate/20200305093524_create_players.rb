class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name  #選手名
      t.integer :club_id  #所属クラブのid
      t.string :figure  #身長・体重
      t.string :posision_number #ポジションと背番号
      t.timestamps
    end
  end
end
