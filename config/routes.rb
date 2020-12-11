  
Rails.application.routes.draw do
  
  resources :orders do 
    resources:orderitems
  end
  
  devise_for :users do 
    resources :orders 
  end
  
  get '/checkout' => 'cart#createOrder'
  
  get '/paid/:id' => 'static_pages#paid'
  
  get '/cart' => 'cart#index'
  
  resources :items
  root 'static_pages#home'

  get '/about' => 'static_pages#about'

  get '/contact' => 'static_pages#contact'
  
  get '/products' => 'items#index'
  
  get '/login' => 'user#login' 
  
  get '/logout' => 'user#logout'
  
  get '/cart/:id' => 'cart#add'
  
  get '/clearcart' => 'cart#clearCart'
  
  get '/remove/:id' => 'cart#remove'
  
  get '/decrease/:id' => 'cart#decrease'
  
  get '/increase/:id' => 'cart#increase'
  
  get '/done' => 'cart#done'
  
  get 'cart/index'
  
  root :to => 'site#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end