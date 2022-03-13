 # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  root 'welcome#index'

  get 'about', to: 'about#index'
  get 'contact', to: 'contact#index'
  get 'calendar', to: 'calendar#index'
end
