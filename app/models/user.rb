class User < ApplicationRecord
  has_many :items
  has_many :users_loved_items
  has_many :loved_items, through: :users_loved_items, :source => :item

  has_secure_password
  validates :email, presence: true, uniqueness: true
end
