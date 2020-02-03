class Comment < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :post
  belongs_to :user

  validates :text, {presence: true, length: { maximum: 50}}
end
