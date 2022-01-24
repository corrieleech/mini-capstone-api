class ProductsController < ApplicationController
  def index
    products = Product
    .title_search(params[:search])
    .discounted(params[:discount])
    .sorted(params[:sort], params[:sort_order])

    render json: products

  end

  def create
    product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description], 
      number_in_stock: params[:number_in_stock],
      supplier_id: params[:supplier_id]
    )
    product.save
    if product.save 
      render json: product
    else
      render json: {errors: product.errors.full_messages}, status: :unprocessable_entity
    end 
  end
  
  def show
    id = params[:id]
    product = Product.find_by(id: id)
    pp current_user
    render json: product
  end 

  def update
    product = Product.find(params[:id])
    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.description = params[:description] || product.description
    product.images = params[:image] || product.images
    product.number_in_stock = params[:number_in_stock] || product.number_in_stock
    product.supplier_id = params[:supplier_id] || product.supplier_id
    product.save
    if product.save 
      render json: product
    else
      render json: {errors: product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    render json: {message: "Your product as been obliterated."}
  end

end
