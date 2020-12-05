class CartController < ApplicationController
  
  before_action :authenticate_user!
  
    def index
    
      # build logic to pass the cart data to the view
      if session[:cart] then # check if the cart exists
      # if the cart does exist the all the items to be displayed on the cart index page are all the items in that cart
        @cart = session[:cart] 
      else 
      # if the cart doesnt exist then set the cart to be an empty object 
        @cart = {}
      end  
      
    end
  
    def add
      # get the Id of the product
      id = params[:id]
    
      # if the cart is already been created, use existing cart else create a blank cart
      if session[:cart] then
        cart = session[:cart]
      else
        session[:cart] = {}
        cart = session[:cart]
      end
      #If the product is already added it increments by 1 else product set to 1
      if cart[id] then
        cart[id] = cart[id] + 1
      else
        cart[id]= 1
      end  
  
      redirect_to :action => :index
  
    end

    def clearCart
      #sets session variable to nil and bring back to index
      session[:cart] = nil
      redirect_to :action => :index
      
    end 
    
    def remove
      
      id = params[:id]
      cart = session[:cart]
      cart.delete id
      redirect_to :action => :index
      
    end
    
    
    def decrease
      
      id = params[:id]
      cart = session[:cart]
      if cart[id] == 1 then
        cart.delete id
      else
       cart[id] = cart[id] -1
      end
      redirect_to :action => :index
      
    end 
    
    def increase
      
      id = params[:id]
      cart = session[:cart]
      cart[id] = cart[id] +1
      redirect_to :action => :index
      
    end 
    
    
    def createOrder 
      
      # Step 1 Find user information
      @user = User.find(current_user.id)
      # Step 2 Make a anew order and link that order with the current user
      @order = @user.orders.build(:order_date => DateTime.now, :status => 'Pending')
      @order.save
      # Step three - Save each order item from the cart into the orderitems table 
      @cart = session[:cart] || {} # This gets the items from the users cart session
      @cart.each do | id, quantity |
        item = Item.find_by_id(id)
        @orderitem = @order.orderitems.build(:item_id => item.id, :title => item.title, :description => item.description, :quantity => quantity, :price => item.price)
        @orderitem.save
      
      end 
    
    @orders = Order.all
    @orderitems = Orderitem.where(order_id: Order.last)
    session[:cart] = nil
 
  #<% @orderitems.each do |id, quantity| %>
 
  #redirect_to '/done'
  #redirect_to :action => :done
    end   
 
end
