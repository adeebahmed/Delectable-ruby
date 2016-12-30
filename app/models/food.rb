class Food < ApplicationRecord
  validates :foodname, presence: true
  validates :category, presence: true
  validates :calories, presence: true
  validates :price, presence: true
  
  belongs_to :user
end
