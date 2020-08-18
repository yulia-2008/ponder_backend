class ParksController < ApplicationController
  def index
    parks = Park.all

    render json: parks
  end

  def update
    park = Park.find(params[:id])

    park.update!(park_params)

    render json: park
  end

  private

  def park_params
    params.require(:park).permit(:name, :address, :contact, :likes, :image_url, :activities)
  end
end
