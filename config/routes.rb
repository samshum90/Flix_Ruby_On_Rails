Rails.application.routes.draw do
roots "movies#index"
get "movies" => "movies#index"
get "movies/:id" => "movies#show", as: "movie"
get "movies/:id/edit" => "movie#edit", as: "edit_movie"
end
