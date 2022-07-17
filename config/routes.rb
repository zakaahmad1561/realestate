Rails.application.routes.draw do
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
