class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :comments

  validates :title, :subtitle, {presence: true, length: { maximum: 30}}
end
