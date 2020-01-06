class Tweet < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  mount_uploader :image1, ImageUploader
  mount_uploader :image2, ImageUploader
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user

  validates :body, presence: true, unless: [:image1?, :image2?]

end
