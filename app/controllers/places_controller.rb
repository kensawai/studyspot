class PlacesController < ApplicationController
  def index
    @places = Place.order("created_at DESC")
  end

  def new
  end

  def create
    Place.create(place_params)
end

private
def place_params
  params.permit(:name, :image, :url, :wifi, :outlet)
end


end
