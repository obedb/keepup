class UsersController < ApplicationController
validates_format_of :email, with: /\@kepler\.com/, message: 'You should have an email with kepler.com'

end
