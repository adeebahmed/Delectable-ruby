class Order < ApplicationRecord
  validates :foods, :total, :surcharge, :ship, :billing, :instructions, :status, presence: true

  belongs_to :customer
end
