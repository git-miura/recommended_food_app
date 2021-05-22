class Food < ApplicationRecord
  belongs_to :user

  has_many :likes, dependent: :destroy

  has_many :liked_users, through: :likes, source: :user

  validates :name, presence: true

  mount_uploader :image, ImageUploader
end
