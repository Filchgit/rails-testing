Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "animals", to: "animals#index", as: "animals"
  get "animals/new", to: "animals#new", as: "new_animal"
  # note that the order is important as it will muck up a animal/new with animals/3 otherwise
 
  post "animals", to: "animals#create"
  get "animals/:id/edit", to: "animals#edit", as: "edit_animal"
  patch "animals/:id", to: "animals#update"
  get "animals/:id", to: "animals#show", as: "animal"
  delete "animals/:id", to: "animals#destroy", as: "delete_animal"
end
