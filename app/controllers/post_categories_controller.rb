class PostCategoriesController < ApplicationController
  before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]
  before_action :authenticate_staff!, only: [:new, :create, :edit, :update, :destroy]

  
end
