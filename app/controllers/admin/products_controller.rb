class Admin::ProductsController < Admin::AdminController
  before_action :find_product, only: [:show, :edit, :update, :destroy]
  before_action :categories, only: [:new, :create, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end
  
  def create
    @product = Product.new(product_params)
    @product.image.attach(params[:product][:image])
    if @product.save
       flash[:success] = "Create successfully"
       redirect_to admin_products_path
    else
      render :new
    end
  end

  def edit; end

  def update
    if @product.update(product_params)
      flash[:success] = "Update Successfully"
      redirect_to admin_products_path
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    flash[:success] = "Prodcut Deleted"
    redirect_to admin_products_path
  end

  private

  def product_params
    params.require(:product).permit :name, :price, :product_type, :details, :category_id, :image
  end

  def find_product
    @product = Product.find_by(id: params[:id])
    redirect_to admin_products_path unless @product
  end

  def categories
    @categories = Category.all
  end
end