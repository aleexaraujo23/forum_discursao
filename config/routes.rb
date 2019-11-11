Rails.application.routes.draw do
  devise_for :users
  
  resources :discussions do
   resources :comments
  end

  root to: 'discussions#index'
 # resources :discussions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
