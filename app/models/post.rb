class Post < ApplicationRecord
    mount_uploader :image, ImageUploader
    belongs_to :user
    has_many :comments, dependent: :destroy
    has_many :goods, dependent: :destroy
    has_many :gooded_users, through: :goods, source: :user
end
