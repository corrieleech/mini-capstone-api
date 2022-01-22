class SuppliersController < ApplicationController
  def index
    suppliers = Supplier.all
    render json: suppliers 
  end

  def create
    supplier = Supplier.new(
      name: params[:name],
      email: params[:email],
      phone_number: params[:phone_number]
    )
    supplier.save
    if supplier.save
      render json: supplier
    else
      render json: {message: "Could not save supplier due to the following errors: #{supplier.errors.full_message}."}, status: :unprocessable_entity
    end
  end

  def show
    supplier = Supplier.find(params[:id])
    render json: supplier
  end

  def update
    supplier = Supplier.find(params[:id])
    supplier.name = params[:name] || supplier.name 
    supplier.email = params[:email] || supplier.email 
    supplier.phone_number = params[:phone_number] || supplier.phone_number
    supplier.save
    if supplier.save
      render json: supplier
    else
      render json: {message: "Updates to the supplier could not be saved due to the following errors: #{supplier.errors.full_message}."}, status: :unprocessable_entity
    end
  end

  def destroy
    supplier = Supplier.find(params[:id])
    supplier.destroy
    render json: {message: "#{supplier.name} has been removed from the database."}
  end

end
