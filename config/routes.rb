Rails.application.routes.draw do
roots "movies#index"

resources :movies
end
