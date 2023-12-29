class Pet < ApplicationRecord

  mount_uploader :avatar, AvatarUploader
  belongs_to :user
  validates :pet_name, presence: true
  validates :pet_birthdate, presence: true
  validates :animal_species, presence: true
  validates :pet_kind, presence: true
  has_many :appointments, :dependent => :destroy
  has_many :health_records, :dependent => :destroy
end
