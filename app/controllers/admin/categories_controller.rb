class Admin::CategoriesController < Admin::AdminController
  before_action :find_category, only: [:show, :edit, :update, :destroy]

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:success] = "Create Successfully"
      redirect_to admin_categories_path
    else
      render :new
    end
  end

  def edit; end

  def update
    if @categories.update(category_params)
      flash[:success] = "Update Successfully"
      redirect_to admin_categories_path
    else
      render :edit
    end
  end

  def destroy
    @categories.destroy
    flash[:success] = "Category Deleted"
    redirect_to admin_categories_path
  end

  private
    def category_params
    params.require(:category).permit :name
  end

  def find_category
    @categories = Category.find_by(id:params[:id])
    redirect_to admin_categories_path unless @categories
  end
end