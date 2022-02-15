class CartedProductsController < ApplicationController
  before_action :authenticate_user

  def index
    carted_products = current_user.carted_products.where(status: "carted")
    render json: carted_products 
  end

  def create
    id = current_user.id
    carted_product = CartedProduct.new(
      user_id: id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted",
      order_id: nil
    )
    if carted_product.save
      render json: carted_product
    else
      render json: {errors: carted_product.errors.full_messages}
    end
  end

end
