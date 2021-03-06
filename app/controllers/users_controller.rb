class UsersController < ApplicationController
def index
        @users = User.all
 end   
    def show
        @user = User.find(params[:id])
    end
    
    def new
        @user = User.new()
    
    end
    def create
        @user = User.new(user_params)
        
        
        if @user.save
            
            redirect_to :controller => 'welcome', :action => 'index'
           else
               render 'new'
        end
        
        
    #    render plain: params[:articles].inspect
    end
    def edit
        @user = User.find(params[:id])
    end
    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            redirect_to @user
        else
            render 'edit'
        end
    end
    
    def destroy
        @user = User.find(params[:id])
        @user.destroy
        
        redirect_to users_path
    end
    
end

private
def user_params
    params.require(:user).permit(:firstName, :lastName, :email, :userName, :password)
end



