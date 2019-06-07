class PostsPlaza < ApplicationRecord
  belongs_to :post, foreign_key: 'postId'

end
