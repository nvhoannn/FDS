class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find_by(id: params[:id])
    return redirect_to root_path unless @category
    @products = @category.products
  end
end
