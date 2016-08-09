Rails.application.routes.draw do

get 'places/new' => 'places#new'
get 'places' => 'places#index'

end
