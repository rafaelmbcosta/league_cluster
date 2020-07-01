Rails.application.routes.draw do
  namespace :api do
    get 'seasons', to: 'seasons#index'
    get 'seasons/current', to: 'seasons#current'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
