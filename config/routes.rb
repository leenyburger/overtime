Rails.application.routes.draw do
  resources :posts
  devise_for :users, skip: [:registrations]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: 'static#homepage'
end
