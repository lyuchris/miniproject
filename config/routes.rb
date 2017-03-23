Rails.application.routes.draw do
  devise_for :users
  
  resources :groups do
    member do
      post :join
      post :quit
    end
    resources :posts
  end
  resources :ads do
    member do
      post 'upvote'
    end
  end
  resources :events do
  	resources :attendees , :controller => "event_attendees"
  end
  resources :tickets

  namespace :admin do
    resources :events
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
