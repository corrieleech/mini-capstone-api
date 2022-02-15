class OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    orders = current_user.orders
    render json: orders
  end
  
  def create
    carted_products = current_user.carted_products.where(status: "carted")
    subtotal = carted_products.map { |carted_product| carted_product.product.price * carted_product.quantity}.reduce(:+)
    tax = subtotal * 0.09
    total = subtotal + tax
    order = Order.new(
      user_id: current_user.id,
      subtotal: subtotal,
      tax: tax,
      total: total
    )
    if order.save
      carted_products.update_all(order_id: order.id, status: "purchased")
      render json: order
    else
      render json: {error: "Couldn't save due to the following: #{order.errors.full_messages}"}, status: :unprocessable_entity
    end
  end

  def show
    if current_user.orders
      order = current_user.orders.find(params[:id])
    end
    render json: order
  end

end
