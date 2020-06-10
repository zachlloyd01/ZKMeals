class AdminController < ApplicationController

  def index
    @products = Product.all
  end

  def create
    @product = Product.new
    @product.name = params["name"]
    @product.ingredients = params["ingredients"]
    @product.description = params["ingredients"]
    @product.image = params["image"]
    @product.save
  end

end
