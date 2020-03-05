class CreateManuals < ActiveRecord::Migration[5.2]
  def change
    create_table :manuals do |t|
      t.text :manual_text  #選手取扱説明書のテキスト
      t.integer :player_id  #どの選手のテキストなのか
      t.integer :user_id  #どのユーザーが書き込んだテキストなのか
      t.timestamps
    end
  end
end
