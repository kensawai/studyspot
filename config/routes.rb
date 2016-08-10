Rails.application.routes.draw do

  devise_for :users
  root 'places#index'

get 'places/new' => 'places#new'
get 'places' => 'places#index'
post 'places' => 'places#create'
get 'users/:id' => 'users#show'
delete 'places/:id' => 'places#destroy'

end
