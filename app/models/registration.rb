class Registration < ApplicationRecord
    has_secure_password
  
    validates :first_name, :last_name, :email, :phone, :password, :password_confirmation, presence: true
    validates :email, uniqueness: true
    validates :password, confirmation: true
  end
  