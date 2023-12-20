class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :pet
  belongs_to :vet
end
