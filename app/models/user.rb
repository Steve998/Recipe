# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  username        :string
#  email           :string
#  admin           :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string
#

class User < ActiveRecord::Base

  scope :admin_only,  -> { where(admin: true) }
  scope :non_admin, -> { where(admin: false) }
  scope :name_guest, -> { where(name: 'Guest') }

  has_many :recipes
  has_many :meals
  has_many :comments

  has_secure_password
  validates :name, presence: true,  length: { maximum: 25 }
  validates :email, presence: true,  length: { maximum: 125 }, uniqueness: { case_sensitive: false }
  validates :password, presence: true,  length: { minimum: 6 }
end
