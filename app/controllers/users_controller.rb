class UsersController < ApplicationController
validates_format_of :email, with: /\@kepler\.org/, message: 'You should have an email with kepler.org'

end
