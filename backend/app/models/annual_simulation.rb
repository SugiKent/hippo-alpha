class AnnualSimulation < ApplicationRecord
  belongs_to :simulation
  validates :monthly_deposit, presence: true, length: { maximum: 12 }, numericality: { only_integer: true }
  validates :rate, presence: true, numericality: { only_integer: true }
  validates :year, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 99 }, uniqueness: { scope: :simulation_id }
end
