class User < ApplicationRecord

  has_many :comments
  
  
  validates_format_of :email, with: /\@kepler\.org/, message: 'You should have an email with kepler.org'

end
