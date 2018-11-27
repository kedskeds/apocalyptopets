class Pet < ApplicationRecord
  belongs_to :user
  belongs_to :species

  has_many :accessories
  has_many :pet_stats
  has_many :stats, through: :pet_stats

  validates_associated :user, :species
  validates :name, uniqueness: true
end
