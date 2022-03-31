Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "article#home"

  # get "aboutPage" ,to: "article#about"

   resources :article , only: [:show]
end
