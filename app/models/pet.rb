class Pet < ApplicationRecord
  belongs_to :user
  belongs_to :species
  has_many :accessories

  validates_associated :user, :species
end
