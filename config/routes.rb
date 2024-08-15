Rails.application.routes.draw do
  get 'customerview/index'
  root 'home#index'

  get 'home', to: 'home#index'
  get 'service', to: 'service#index'
  get 'aboutus', to: 'about_us#index'
  get 'contactus', to: 'contact_us#index'
  post 'register', to: 'contact_us#create', as: 'register'

  get 'login', to: 'login#new'
  post 'login', to: 'login#create'
  get 'logout', to: 'login#destroy'

  get 'customerview', to: 'customerview#index', as: 'customerview'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
