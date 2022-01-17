class ProductsController < ApplicationController
  def index
    products = Product.all
    render json: products
  end

  def create
    product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description]
    )
    product.save
    render json: product
  end
  
  def show
    id = params[:id]
    product = Product.find_by(id: id)
    render json: product
  end 

  def update
    product = Product.find(params[:id])
    
    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.description = params[:description] || product.description
    product.image_url = params[:image_url] || product.image_url
    product.save
    render json: product
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    render json: {message: "Your product as been obliterated."}
  end

end
