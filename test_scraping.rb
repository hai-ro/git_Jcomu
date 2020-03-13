require 'mechanize'
n = 4

agent = Mechanize.new
page = agent.get('https://data.j-league.or.jp/SFIX02/search?displayId=SFIX02&selectValue=1&displayId=SFIX02&selectValueTeam=14&displayName=%EF%BC%AA%EF%BC%91%E3%83%AA%E3%83%BC%E3%82%B0&displayNameTeam=%E5%8C%97%E6%B5%B7%E9%81%93%E3%82%B3%E3%83%B3%E3%82%B5%E3%83%89%E3%83%BC%E3%83%AC%E6%9C%AD%E5%B9%8C')
name = page.at('//*[@id="contents"]/form/div[3]/div[' + n.to_s + ']/p/span[1]').inner_text

puts name



# //*[@id="contents"]/form/div[3]/div[3]/p/span[1] name
# //*[@id="contents"]/form/div[3]/div[3]/p/span[2] name_yomi
# //*[@id="contents"]/form/div[3]/div[3]/dl/dd[1] position
# //*[@id="contents"]/form/div[3]/div[3]/dl/dd[2] birthday
# //*[@id="contents"]/form/div[3]/div[3]/dl/dd[3] 


# //*[@id="contents"]/form/div[3]/div[4]/p/span[1] ２人目name


# //*[@id="contents"]/form/div[3]/div[3]
# //*[@id="contents"]/form/div[3]/div[4]