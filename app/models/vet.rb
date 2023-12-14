class Vet < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :donations
  has_many :appointments, :dependent => :destroy
  has_many :health_records, :dependent => :destroy
end
