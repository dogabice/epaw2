class Donation < ApplicationRecord
    belongs_to :user, :optional => true
    belongs_to :vet, :optional => true
end
