Rails.application.routes.draw do
  resources :video_genres
  resources :genres
  resources :videos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
