class Stat < ApplicationRecord
  has_many :pet_stats
  has_many :pets, through: :stats

  validates :name, uniqueness: true
end