Rails.application.routes.draw do
  devise_for :users
  resources :ads
  resources :events do
  	resources :attendees , :controller => "event_attendees"
  end
  resources :tickets
  resources :ads

  namespace :admin do
    resources :events
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
