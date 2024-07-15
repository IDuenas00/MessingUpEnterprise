Rails.application.routes.draw do
  root 'home#home'

  get '/home', to: 'home#home'
  get 'aboutus', to: 'about_us#aboutus'
  get 'services', to: 'services#service'
  get 'contactus', to: 'contact_us#contactus'
  get 'login', to: 'login#login'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
