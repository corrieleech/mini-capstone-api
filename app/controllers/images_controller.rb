class ImagesController < ApplicationController

  def index
    images = Image.all
    render json: images
  end

  def create
    image = Image.new(
      url: params[:url],
      product_id: params[:product_id]
    )
    image.save
    if image.save
      render json: {message: "Image ##{image.id} has been added to the database."}
    else
      render json: {error: "Image could not be created due to the following errors: #{image.errors.full_messages}"}
    end
  end

  def show
    image = Image.find(params[:id])
    render json: image
  end

  def destroy
    image = Image.find(params[:id])
    image.destroy
    render json: {message: "Image ##{image.id} has been removed from the database."}
  end

end
