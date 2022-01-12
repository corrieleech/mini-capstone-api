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
  def any_product
    id = params[:id]
    product = Product.find_by(id: id)
    return_product = []
    info = []
    info << product.name
    info << product.price
    info << product.description
    return_product << info
    render json: return_product
  end
end
