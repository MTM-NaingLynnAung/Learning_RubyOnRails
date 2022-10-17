class ProductsController < ApplicationController
  before_action :set_product 
  def index
    @products = Product.order("id DESC")
  end
  def new
    @product = ProductService.new
  end
  def show
    
  end
  def create
    @product = ProductService.create(product_params)
    isSave = ProductService.save(@product)
    if isSave
      redirect_to products_path, success: 'Product created successfully'
    else
      render :new , status: :unprocessable_entity
    end
  end

  def edit
    
  end
  def update
    
    if @product.update(product_params)
      redirect_to products_path, info: 'Product updated successfully'
    else
      flash[:danger] = 'Failed to update product'
      render :edit
    end
  end

  def destroy
    
    if @product.delete
      redirect_to products_path, success: 'Product deleted successfully'
    else
      flash[:danger] = 'Failed to delete'
      render :destroy
    end
  end

  private

    def product_params
      params.require(:product).permit(:name, :price, :description)
    end

    def set_product
      @product = Product.find_by(id: params[:id])
    end
end
