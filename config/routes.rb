Rails.application.routes.draw do
  devise_for :users, 
  controllers: { 
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    confirmations: 'users/confirmations'
  }
  resources :articles do
    collection do
      get :destroy_multiple
    end
  end
  get "pages/home"
  get "pages/contact"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
end
