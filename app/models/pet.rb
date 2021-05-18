class Pet < ApplicationRecord
  ALLOWED_SPECIES = %w[dog cat frog whale turtle horse bird].map(&:capitalize)

  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :species, inclusion: { in: ALLOWED_SPECIES }
end
