class Accessory < ApplicationRecord
  belongs_to :pet
  belongs_to :slot
end
