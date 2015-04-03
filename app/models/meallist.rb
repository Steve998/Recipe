# == Schema Information
#
# Table name: meallists
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Meallist < ActiveRecord::Base
end
