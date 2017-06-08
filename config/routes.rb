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
    get "/establecimientos", to: "establishments#guia"
    get "/asistencias", to: "attendances#guia"
    get "/asistenciasJugadores/", to:"attendances#asistenciajugador",as: :asistencia_jugador    
  end

   unauthenticated :user do
    devise_scope :user do
      root "welcome#unregistered", as: :unregistered_root
    end

  end

  
end