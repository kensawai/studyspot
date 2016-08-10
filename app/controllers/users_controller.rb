class UsersController < ApplicationController

  def show
    @nickname = current_user.nickname
    @places = current_user.places.page(params[:page]).per(5).order("created_at DESC")
end



  end
