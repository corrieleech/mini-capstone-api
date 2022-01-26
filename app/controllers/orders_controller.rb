class OrdersController < ApplicationController
  def index
    if current_user
      orders = current_user.orders
      render json: orders
    else
      render json: [], status: :unauthorized
    end
  end
  
  def create
    if current_user
      product = Product.find(params[:product_id])
      subtotal = product.price * params[:quantity]
      tax = subtotal * 0.09
      total = subtotal + tax
      order = Order.new(
        product_id: params[:product_id],
        user_id: current_user.id,
        quantity: params[:quantity],
        subtotal: subtotal,
        tax: tax,
        total: total
      )
      if order.save
        render json: order
      else
        render json: {error: "Couldn't save due to the following: #{order.errors.full_messages}"}, status: :unprocessable_entity
      end
    else
      render json: [], status: :unauthorized
    end
  end

  def show
    if current_user.orders
      order = current_user.orders.find(params[:id])
    end
    render json: order
  end

end
