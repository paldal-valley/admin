class PostsQuestion < ApplicationRecord
  belongs_to :post, foreign_key: 'postId'
  has_many :posts_answers, foreign_key: 'postId_Q'

  scope :select_answer, ->{joins(:posts_answers).where("posts_answers.isSelected = ?", 1).uniq}
  scope :unselect_answer, ->{where.not(id: PostsQuestion.joins(:posts_answers).where("posts_answers.isSelected = ?", 1).ids)}

  def find_answer_list
    PostsAnswer.where(postId_Q: self.id)
  end

  def count_answer_list
    self.find_answer_list.count
  end

  def check_selected
    self.find_answer_list.where(isSelected: 1).present?
  end

  def self.filter_by_answer(isSelected)
    joins(:posts_answers).where("posts_answers.isSelected = ?", isSelected)
  end

  #  Add your custom method as ransack
  def self.ransackable_scopes(_auth_object = nil)
    [:filter_by_answer]
  end

end
