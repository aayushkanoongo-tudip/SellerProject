class ProductsController < ApplicationController
  http_basic_authenticate_with name: "tudip", password: "tudip123", except: [:index, :show]

  def new
  end
  def create
    #byebug
    @products = Product.create(product_params)
    redirect_to products_path(seller_id: params[:product][:seller_id])
  end

  def index
    #byebusg
    #@product = Product.new
    @seller = Seller.find_by_id(params[:seller_id])
    @products = @seller.products
  end

  def show
  end

  def destroy
    #byebug
    @products = Product.find_by_id(params[:id])
    @products.destroy
    redirect_to products_path(seller_id: params[:seller_id])
  end

  def edit
    #byebug
    @product = Product.find_by_id(params[:id])
    @seller = Seller.find_by(id: params[:seller_id])
    respond_to do|format|
      format.js
    end
  end

  def update
    @product = Product.find_by_id(params[:id])
    if @product.update(product_params)
      #redirect_to @product
      redirect_to products_path(seller_id: params[:seller_id])
    else
      render 'edit'
    end
  end
  private
  def product_params
    params.require(:product).permit(:model_no, :name, :quantity, :price, :image, :seller_id)
  end
end