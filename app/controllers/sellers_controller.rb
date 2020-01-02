class SellersController < ApplicationController

  def new
  end
  def create
    @seller = Seller.create(seller_params)
    redirect_to sellers_path
  end
  def index
    @Sellers = Seller.all
    @seller = Seller.all
    @seller = Seller.new
  end
  def show
    #@seller = Seller.all
  end

  def edit
    @seller = Seller.find_by_id(params[:id])
  end

  def update
    @seller = Seller.find_by_id(params[:id])
    if @seller.update(seller_params)
      #redirect_to @product
      redirect_to action: "index"
    else
      render 'edit'
    end
  end

  def destroy
    @seller = Seller.find_by_id(params[:id])
    @seller.destroy
    #byebug
    redirect_to action: "index"
  end

  private
  def seller_params
    params.require(:seller).permit(:s_name)
  end
end