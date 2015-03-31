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
  belongs_to :recipe
  belongs_to :user
end
