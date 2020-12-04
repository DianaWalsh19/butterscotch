Rails.application.routes.draw do
  
  resources :items
  root 'static_pages#home'

  get '/about' => 'static_pages#about'

  get '/contact' => 'static_pages#contact'
  
  get '/products' => 'items#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
