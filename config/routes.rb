Rails.application.routes.draw do
  

  devise_for :users
  authenticated :user do
  	root 'welcome#index'
  	resources :establishments
    resources :players
    resources :savings
    resources :fields
    resources :attendances
    resources :teams
    resources :savingfields
  end


   unauthenticated :user do
   	devise_scope :user do
  		root "welcome#unregistered", as: :unregistered_root
   	end

  end

  
end
