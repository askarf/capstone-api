class UsersLovedItem < ApplicationRecord
  belongs_to :item
  belongs_to :user
  # has_many :items
  # has_many :users
end
