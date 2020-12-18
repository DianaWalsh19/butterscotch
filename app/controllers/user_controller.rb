class UserController < ApplicationController
    before_action :is_staff_or_admin?
    
    def is_staff_or_admin?
      # check if user is a admin
      # if not admin then redirect to where ever you want 
      flash[:error] = "You must admin or staff in to access this section"
      redirect_to root_path unless current_user && current_user.staff? || current_user && current_user.admin 
    end
    
    def allusers
        @users = User.all
    end
  
    def makeAdmin
      @user = User.find_by(id: params[:id])
      @user.update_attribute(:admin, true)
      redirect_to :action => :allusers
    end
  
    def removeAdmin
      @user = User.find_by(id: params[:id])
      @user.update_attribute(:admin, false)
      redirect_to :action => :allusers
    end    
  
    def makeStaff
      @user = User.find_by(id: params[:id])
      @user.update_attribute(:staff, true)
      redirect_to :action => :allusers
    end
  
    def removeStaff
      @user = User.find_by(id: params[:id])
      @user.update_attribute(:staff, false)
      redirect_to :action => :allusers
    end    



    def login
        session[:login] = 1
        session[:cart] = nil
        flash[:notice] = "You are now logged in"
        redirect_to :controller => :items
    end 
    
    def logout
        session[:login] = nil
        session[:cart] = nil
        flash[:notice] = "You have been successfully logged out"
        redirect_to :controller => :items
    end    
    
end
