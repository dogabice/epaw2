class HealthRecord < ApplicationRecord
  belongs_to :pet
  belongs_to :vet
end
