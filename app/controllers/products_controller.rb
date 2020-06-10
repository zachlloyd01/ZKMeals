class ProductsController < ApplicationController

  skip_before_action :authorized, only: [:meals]

  def meals
    @products = Product.all
  end

end
