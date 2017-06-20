class CategoriesController < ApplicationController
<<<<<<< HEAD
  def index
    @categories = Category.all
    
  end
=======
  before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]
  before_action :authenticate_staff!, only: [:new, :create, :edit, :update, :destroy]
>>>>>>> f9219898052f76c5778529586a8b84b0a3abdcc4
end
