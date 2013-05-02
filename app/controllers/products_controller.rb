class ProductsController < ApplicationController
  layout "application"
  
  def index
    @products = Product.all
  end
  
  def show
    @product = Product.find(params[:id])
  end
  
  def new
    @product = Product.new
  end
  
  def create
    @product = Product.new(params[:product])
  end
  
  def edit
   
  end
  
  def update

  end
  
  def destroy
   
  end

  def hot_products

  end

end
