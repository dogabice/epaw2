class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validate :unique_email
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :pets, :dependent => :destroy
  has_many :donations
  has_many :appointments

  private

  def unique_email
    if User.exists?(email: email)
      errors.add(:email, 'is already taken. Please choose another email address.')
    end
  end
  
end
