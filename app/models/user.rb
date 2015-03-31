class User < ActiveRecord::Base
  has_many :recipes
  has_many :meals
end
