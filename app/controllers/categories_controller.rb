class CategoriesController < ApplicationController
  def index
    @category = Category.where("name like?", "%#{params[:q]}%")
    respond_to do |format|
      format.html
      format.json { render :json => @category.map(&:attributes)}
    end
  end
end
