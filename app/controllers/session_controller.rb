class SessionController < ApplicationController
    
    def index
        @sessions = Session.all
        
 end
 
  def show
        @session = Session.find(params[:id])
    end
 
 
     def new
 @session = Session.new
 redirect_to welcome
end

def create
   
  
   @session = Session.new(session_params)
    
   
        redirect_to new_user_path
   end 
    

end

def destroy
     @session = Session.find(params[:id])
        @session.destroy
        
        redirect_to root_path
       
    end



private
def session_params
    params.require(:session).permit(:userName, :password)
end