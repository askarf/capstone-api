class Item < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :size, presence: true
  validates :image, presence: true
  validates :condition, presence: true
  validates :retail_price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :selling_price, presence: true, numericality: { greater_than_or_equal_to: 0 }

  belongs_to :user
  has_many :images
end
