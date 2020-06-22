class Scraping
  
  def self.get_players
    # 更新タイミング
    updated_season = "2020a"
    
    
    # 取得先クラブ検索時のURLを貼り付け
    url = 'https://data.j-league.or.jp/SFIX02/search?displayId=SFIX02&selectValue=1&displayId=SFIX02&selectValueTeam=14&displayName=%EF%BC%AA%EF%BC%91%E3%83%AA%E3%83%BC%E3%82%B0&displayNameTeam=%E5%8C%97%E6%B5%B7%E9%81%93%E3%82%B3%E3%83%B3%E3%82%B5%E3%83%89%E3%83%BC%E3%83%AC%E6%9C%AD%E5%B9%8C'
    
    
    club_id = 1 #Clubsテーブルのidと一致させること
    
    
    n=3
    
    agent = Mechanize.new
    page = agent.get(url)
    
    while true
      #break判定
      check = page.at('//*[@id="contents"]/form/div[3]/div[' + n.to_s + ']/p/span[1]')
      break if check == nil
      
      #checkに要素が存在するまで以下を繰り返し
      #選手名を取得
      name = page.at('//*[@id="contents"]/form/div[3]/div[' + n.to_s + ']/p/span[1]').inner_text
      
      #選手名（英語）を取得
      yomi = page.at('//*[@id="contents"]/form/div[3]/div[' + n.to_s + ']/p/span[2]').inner_text if page.at('//*[@id="contents"]/form/div[3]/div[' + n.to_s + ']/p/span[2]')
    
      #身長体重を取得
      figure = page.at('//*[@id="contents"]/form/div[3]/div[' + n.to_s + ']/dl/dd[3]').inner_text if page.at('//*[@id="contents"]/form/div[3]/div[' + n.to_s + ']/dl/dd[3]')
      
      #ポジションを取得
      position = page.at('//*[@id="contents"]/form/div[3]/div[' + n.to_s + ']/dl/dd[1]').inner_text if page.at('//*[@id="contents"]/form/div[3]/div[' + n.to_s + ']/dl/dd[1]')
      
      #誕生日を取得
      birthday = page.at('//*[@id="contents"]/form/div[3]/div[' + n.to_s + ']/dl/dd[2]').inner_text
      
      #重複チェック用データ作成
      name_birthday = name + birthday
      
      player = Player.where(name_birthday: name_birthday).first_or_initialize
      player.name = name
      player.name_yomi = yomi
      player.club_id = club_id
      player.figure = figure
      player.position = position
      player.birthday = birthday
      
      player.updated_season = updated_season
      
      player.save
      
      n += 1
    end
    
  end
  
  def self.active_check
    
    update = "2020a" #ここにアップデートしたタイミングを記述
    
    id = 1
    
    while Player.last.id > id
      player = Player.find(id)
      
      if player.updated_season == update
        player.update(active_check: true)
      else
        player.update(active_check: false)
      end
      
      id += 1
    end
    
  end

end