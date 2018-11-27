class Slot < ApplicationRecord
  has_many :accessories

  validates :name, uniqueness: true
end
