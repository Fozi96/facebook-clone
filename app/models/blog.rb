class Blog < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :blogs, presence: true
  validates :image, presence: true
  belongs_to :user
end
