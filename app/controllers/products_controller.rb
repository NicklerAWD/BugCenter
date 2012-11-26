class ProductsController < ApplicationController
  def new
  	@product=Product.new
  end

  def create
    @product = Product.new(params[:product])
    if @product.save
      flash[:success] = "Welcome to the Recon Center!"
      redirect_to @product
    else
      render 'new'
    end
  end

  def show
    @product = Product.find(params[:id])
  end
end
