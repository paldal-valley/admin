class Comment < ApplicationRecord
  belongs_to :post, foreign_key: 'postId'
  belongs_to :user, foreign_key: 'userId'

end
