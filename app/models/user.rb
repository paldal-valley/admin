class User < ApplicationRecord
  has_many :posts, foreign_key: 'userId'
  has_many :comments, foreign_key: 'userId'

  def self.find_recent_week
    userlist = User.ransack(createdDate_gteq: (Date.today - 6), createdDate_lteq: Date.today).result().group_by_day(:createdDate).count
    (0..6).each do |i|
      if !userlist.keys.include?(Date.today - i) #해당 날짜 데이터가 없으면 0으로 추가
        userlist.store(Date.today - i, 0)
      end
      userlist[(Date.today-i).strftime("%Y-%m-%d")] = userlist.delete (Date.today - i)
    end
    return userlist
  end

end
