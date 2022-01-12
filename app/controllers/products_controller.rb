class ProductsController < ApplicationController
  def display_all
    products = Product.all
    render json: products
  end
end
