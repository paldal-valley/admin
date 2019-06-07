class PostsAnswer < ApplicationRecord
  belongs_to :post, foreign_key: 'postId'
  belongs_to :posts_question, foreign_key: 'postId_Q'

  scope :select_answer, ->{where(isSelected: 1)}
  scope :unselect_answer, ->{where(isSelected: nil)}

end
