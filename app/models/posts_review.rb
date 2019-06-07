class PostsReview < ApplicationRecord
  belongs_to :post, foreign_key: 'postId'

end
