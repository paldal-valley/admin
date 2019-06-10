class Post < ApplicationRecord
  enum isDeleted: [:no, :yes]
  has_one :posts_question, foreign_key: 'postId'
  has_one :posts_plaza, foreign_key: 'postId'
  has_one :posts_answer, foreign_key: 'postId'
  has_one :posts_review, foreign_key: 'postId'
  has_many :likes, foreign_key: 'refId'
  has_many :comments, foreign_key: 'refId'
  belongs_to :user, foreign_key: 'userId'

  def self.find_recent_week
    postlist = Post.ransack(createdDate_gteq: (Date.today - 6), createdDate_lteq: Date.today).result().group_by_day(:createdDate).count
    (0..6).each do |i|
      if !postlist.keys.include?(Date.today - i) #해당 날짜 데이터가 없으면 0으로 추가
        postlist.store(Date.today - i, 0)
      end
      postlist[(Date.today-i).strftime("%Y-%m-%d")] = postlist.delete (Date.today - i)
    end
    return postlist
  end

end
