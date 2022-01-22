class ProductsController < ApplicationController
  def index
    products = Product.all
    if params[:search]
      products = products.where("name iLike ?", "%#{params[:search]}%")
    end

    if params[:sort] == "price" && params[:sort_order] == "desc"
      products = products.order(:price => :desc)
    elsif params[:sort] == "price"
      products = products.order(:price)
    else params[:sort] == nil
      products = products.order(:id)
    end

    if params[:discount]
      products = products.select {|product| product.is_discounted?}
    end

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
