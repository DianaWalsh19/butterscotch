  
Rails.application.routes.draw do
  
  resources :suppliers
  resources :categories
  resources :orders do 
    resources:orderitems
  end
  
  #devise_for :users do 
    #resources :orders 
  #end
  
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }
  
  get 'category/:title', to: 'static_pages#category'

  get '/checkout' => 'cart#createOrder'
  
  get '/paid/:id' => 'static_pages#paid'
  
  get '/paidbypaypal' => 'static_pages#paidByPayPal'
  
  get '/cart' => 'cart#index'
  
  get '/suppliers' => 'suppliers#suppliers'
  
  get '/allusers' => 'user#allusers'
  
  get '/makeAdmin/:id' => 'user#makeAdmin'

  get '/removeAdmin/:id' => 'user#removeAdmin'
  
  get '/makeStaff/:id' => 'user#makeStaff'

  get '/removeStaff/:id' => 'user#removeStaff'
  
  resources :items
  root 'static_pages#home'

  get '/about' => 'static_pages#about'

  get '/contact' => 'static_pages#contact'
  
  get '/products' => 'items#index'
  
  post '/search' => 'items#search'
  
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