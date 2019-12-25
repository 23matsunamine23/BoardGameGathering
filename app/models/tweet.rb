class Tweet < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  mount_uploader :image1, ImageUploader
  mount_uploader :image2, ImageUploader
end
