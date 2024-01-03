class HealthRecord < ApplicationRecord
  belongs_to :pet
  belongs_to :vet
  validates :health_treatments, presence: true
  validates :health_notes, presence: true
end
