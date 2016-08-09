Rails.application.routes.draw do

  devise_for :users
  root 'places#index'

get 'places/new' => 'places#new'
get 'places' => 'places#index'
post 'places' => 'places#create'

end
