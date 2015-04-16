# == Schema Information
#
# Table name: recipes
#
#  id         :integer          not null, primary key
#  name       :string
#  ingredient :text
#  steps      :text
#  user_id    :integer
#  image      :string
#  url        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  comment_id :integer
#  meal_id    :integer
#

class Recipe < ActiveRecord::Base
#  scope :created_before_today, -> {where(created_at:  DateTime.now)}
  scope :name_testdata, -> {where(name: 'testdata')}
  scope :my_recipes, ->  (current_user) { where(user_id: current_user) }

  belongs_to :user
  belongs_to :meal
  has_many :comments
  mount_uploader :image, AvatarUploader



  def self.search(query)
    where("name like ?", "%#{query}%")
  end

end
