Rails.application.routes.draw do

  get "/" , to:"main#new"

  post "users" , to: "main#create"

end
