class Customer < ApplicationRecord
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :phone, presence: true

  has_many :orders
end
