class StaticPagesController < ApplicationController
  def home
    @items = Item.all
    @categories = Category.all
    current_user.update_attribute :admin, true
  end

  def about
  end

  def contact
  end
  
  def allusers
    @users = User.all
  end
  
  def upgrade
      @user = User.find_by(id: params[:id])
      @user.update_attribute(:admin, true)
      redirect_to :action => :allusers
  end
  
  def downgrade
      @user = User.find_by(id: params[:id])
      @user.update_attribute(:admin, false)
      redirect_to :action => :allusers
  end    

  def category
    catName = params[:title]
    @items = Item.where("category like ? ", catName)
  end

  def createOrder
    @orders = Order.all
  end

  def paid
    # redirect_to "/cart/clear"
    flash[:notice] = 'Transaction Complete'
    @order = Order.last
    @order.update_attribute(:status , "Paid by User: #{current_user.email}")
    #"Paid by User:#{current_user.id} #{current_user.name} #{current_user.surname}")
    
  end


  def paid
    # redirect_to "/cart/clear"

    @order = Order.find_by(id: params[:id])
    @order.update_attribute(:status , "Paid by User: #{current_user.email}")
    #"Paid by User:#{current_user.id} #{current_user.name} #{current_user.surname}")
    
  end

end