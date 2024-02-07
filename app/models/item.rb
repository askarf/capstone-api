class Item < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :size, presence: true
  validates :condition, presence: true
  validates :retail_price, presence: true
  validates :selling_price, presence: true

  belongs_to :user
  has_many :users_loved_items
  has_many :images
  accepts_nested_attributes_for :images
end
