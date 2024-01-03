class Donation < ApplicationRecord
    belongs_to :user, :optional => true
    belongs_to :vet, :optional => true
    validates :donation_amount, numericality: {greater_than: 0}
end
