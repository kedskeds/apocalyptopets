class PetStat < ApplicationRecord
  belongs_to :pet
  belongs_to :stat
end