Rails.application.routes.draw do

  get "/" , to:"main#new"

  post "users" , to: "main#create"

  put "users", to: "main#update"

  delete "users", to: "main#delete"

  get "home" , to: "home#new"

  

end
