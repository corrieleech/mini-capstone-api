class ProductsController < ApplicationController
  def display_all
    products = Product.all
    render json: products
  end
  def display_first
    first = Product.first
    render json: first
  end
  def display_last
    last = Product.last
    render json: last
  end
end
