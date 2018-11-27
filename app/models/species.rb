class Species < ApplicationRecord
  validates :name, uniqueness: true
end
