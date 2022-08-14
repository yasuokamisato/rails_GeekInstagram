class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user
end
