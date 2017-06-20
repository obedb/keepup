class User < ApplicationRecord


  has_secure_password
  
  validates_format_of :email, with: /\@kepler\.org/, message: 'You should have an email with kepler.org'
  
  
   has_many :comments
  
  has_many :conversations, :foreign_key => :sender_id 


end
