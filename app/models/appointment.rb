class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :pet
  belongs_to :vet
  validates :vet_id, uniqueness:{scope:[:date]}
end
