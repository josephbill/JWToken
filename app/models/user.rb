class User < ApplicationRecord
    has_secure_password 
  
    # validations 
    validates :user_name, presence: true, uniqueness: true
    validates :email, presence: true
    validates :password_digest, presence: true 
  end