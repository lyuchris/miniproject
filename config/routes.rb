Rails.application.routes.draw do
  resources :ads
  resources :events
  resources :tickets
  resources :ads
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
