Rails.application.routes.draw do
   get 'wellcome/index'

    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    resources :shipping_companies
    resources :cities
    resources :countries
    resources :customers
    resources :nvoccs
    resources :blhouses
    resources :blmasters
    resources :containers
    resources :ships
#    root 'wellcome/index'
end
