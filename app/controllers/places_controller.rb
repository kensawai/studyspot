class PlacesController < ApplicationController
  def index
    @place = Place.find(1)
  end

end
