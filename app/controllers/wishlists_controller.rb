class WishlistsController < ApplicationController
def index
        @wishlists = Wishlist.all
        @theUser = User.all
    end
    def show
        @wishlist = Wishlist.find(params[:id])
         @theUser = User.all
    end
    
    def new
        @wishlist = Wishlist.new
         @theUser = User.all
    
    end
    def create
        @wishlist = Wishlist.new(wishlist_params)
         @theUser = User.all
        
        
        if @wishlist.save
            
            redirect_to @wishlist
           else
               render 'new'
        end
        
        
    #    render plain: params[:articles].inspect
    end
    def edit
         @theUser = User.all
        @wishlist = Wishlist.find(params[:id])
    end
    def update
        @theUser = User.all
        @wishlist = Wishlist.find(params[:id])
        if @wishlist.update(wishlist_params)
            redirect_to @wishlist
        else
            render 'edit'
        end
    end
    
    def destroy
        @wishlist = Wishlist.find(params[:id])
        @wishlist.destroy
        
        redirect_to wishlists_path
    end
    
end

private
def wishlist_params
    params.require(:wishlist).permit(:description, :price)
end



