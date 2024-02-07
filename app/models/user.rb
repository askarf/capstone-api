class User < ApplicationRecord
  has_many :items
  has_many :users_loved_items

  has_secure_password
  validates :email, presence: true, uniqueness: true
end
