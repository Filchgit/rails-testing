Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "animals", to: "animals#index", as: "animals"
  get "animals/:id", to: "animals#show", as: "animal"
  delete "animalss/:id", to: "animals#destroy", as: "delete_animal"
end
