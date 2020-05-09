Rails.application.routes.draw do
  
  root 'static_pages#top'
  get '/signup', to: 'users#new'
  
  get 'users/index'

  get 'users/show'

  get 'users/edit'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
