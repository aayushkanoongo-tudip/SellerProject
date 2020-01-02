class ItemsController < ApplicationController
  def new
    #byebug
    #@items = Item.new
    product = Product.find_by(id:params[:product_id])
    @items = product.items.new
  end

  def create
    @items = Item.create(item_params)
    #byebug
    redirect_to items_path(product_id: params[:item][:product_id])
  end

  def index
    @products = Product.find_by_id(params[:product_id])
    @items = @products.items

  end

  def show
  end

  def destroy
    @items = Item.find_by_id(params[:id])
    @items.destroy
    redirect_to items_path(product_id: params[:product_id])
  end

  def edit
    @items = Item.find_by_id(params[:id])
  end

  def update
    @items = Item.find_by_id(params[:id])
    if @items.update(item_params)
      redirect_to sellers_path
    else
      render 'edit'
    end
  end

  private
  def item_params
    params.require(:item).permit(:name, :desc, :product_id)
  end
end
