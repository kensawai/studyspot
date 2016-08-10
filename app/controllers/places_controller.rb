class PlacesController < ApplicationController

  before_action :move_to_index, except: :index

  def index
    @places = Place.order("created_at DESC").page(params[:page]).per(3)
  end

  def new
  end

  def create
    Place.create(name: place_params[:name], image: place_params[:image], url: place_params[:url], wifi: place_params[:wifi], outlet: place_params[:outlet], user_id: current_user.id)
end

private
def place_params
  params.permit(:name, :image, :url, :wifi, :outlet)
end

def move_to_index
  redirect_to action: :index unless user_signed_in?
end


end
