class Item < ApplicationRecord
  validates :name, uniqueness: true
  validates :description, uniqueness: true
end