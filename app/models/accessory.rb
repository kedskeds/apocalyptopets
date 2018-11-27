class Accessory < ApplicationRecord
  belongs_to :slot

  validates :name, uniqueness: true
end
