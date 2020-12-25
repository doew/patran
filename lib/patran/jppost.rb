module Patran
  class Jppost
    def self.official_tracking_uri(number)
      "https://trackings.post.japanpost.jp/services/srv/search/?requestNo1=#{number}&requestNo2=&requestNo3=&requestNo4=&requestNo5=&requestNo6=&requestNo7=&requestNo8=&requestNo9=&requestNo10=&search.x=0&search.y=0&locale=ja"
    end
  end
end