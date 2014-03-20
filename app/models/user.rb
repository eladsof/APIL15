class User < ActiveRecord::Base
  
  #:email, :first_name, :last_name, :password, :password_confirmation 
  has_secure_password
  
  validates :password, presence: true, length: { minimum: 6 }
  
  validates :first_name, presence: true, length: { maximum: 20 }
  validates :last_name, presence: true, length: { maximum: 20 }
  validates :email, presence: true, format: { with: /@/ }, uniqueness: { case_sensitive: false }
  
  before_save { |user| user.email = email.downcase }
  
end
