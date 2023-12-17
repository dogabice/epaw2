class Pet < ApplicationRecord
  belongs_to :user
  has_many :appointments, :dependent => :destroy
  has_many :health_records, :dependent => :destroy
end
