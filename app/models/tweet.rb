class Tweet < ApplicationRecord
  belongs_to :user
  mount_uploader :image1, ImageUploader
  mount_uploader :image2, ImageUploader
end
