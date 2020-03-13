class Club < ApplicationRecord
  
  #association
  has_many :users
  has_many :players
  
  def self.import(file)
    CSV.foreach(file.path,encoding: 'SHIFT_JIS:UTF-8', headers: true) do |row|
    # IDが見つかれば、レコードを呼び出し、見つからなければ、新しく作成
    club = find_by(id: row["id"]) || new
    # CSVからデータを取得し、設定する
    club.attributes = row.to_hash.slice(*updatable_attributes)
    # 保存する
    club.save
    end
  end
  
  # 更新を許可するカラムを定義
  def self.updatable_attributes
    ["id", "name", "abbreviation", "founding", "join", "detail"]
  end
end
