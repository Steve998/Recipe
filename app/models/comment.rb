# == Schema Information
#
# Table name: comments
#
#  id          :integer          not null, primary key
#  description :text
#  user_id     :integer
#  recipe_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Comment < ActiveRecord::Base

  scope :my_comment, ->  (current_user) { where(user_id: current_user) }

  belongs_to :recipe
  belongs_to :user
end
