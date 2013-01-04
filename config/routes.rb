Picchamps2::Application.routes.draw do
  
  root :to => "pictures#index"

  devise_for :users

  get '/pictures/recent' => 'pictures#recent', as: :recent_pictures
  get '/pictures/top' => 'pictures#top', as: :top_pictures
  post '/pictures/vote/:id' => 'votes#vote', as: :vote

  resources :pictures

end
