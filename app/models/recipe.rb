class Recipe < ActiveRecord::Base
  belongs_to :user
  belongs_to :meal
  has_many :comments
  mount_uploader :image, AvatarUploader
end
