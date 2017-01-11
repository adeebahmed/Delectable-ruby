class Menu < ApplicationRecord
  validates :menuname, presence: true

  has_many :foods
end
