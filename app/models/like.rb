class Like < ApplicationRecord
  belongs_to :post, foreign_key: 'refId'
  belongs_to :user, foreign_key: 'userId'

end
