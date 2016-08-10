class PlacesController < ApplicationController

  before_action :move_to_index, except: :index

  def index
    @places = Place.includes(:user).order("created_at DESC").page(params[:page]).per(3)
  end

  def new
  end

  def create
    Place.create(name: place_params[:name], image: place_params[:image], url: place_params[:url], wifi: place_params[:wifi], outlet: place_params[:outlet], user_id: current_user.id)
end

def destroy
  place = Place.find(params[:id])
  if place.user_id == current_user.id
    place.destroy
  end
end

def edit
  @place = Place.find(params[:id])
end

def update
  place = Place.find(params[:id])
  if place.user_id == current_user.id
    place.update(place_params)
  end
end






private
def place_params
  params.permit(:name, :image, :url, :wifi, :outlet)
end

def move_to_index
  redirect_to action: :index unless user_signed_in?
end


end
