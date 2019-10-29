class WishlistsController < ApplicationController
def index
        @wishlists = Wishlist.all
    end
    def show
        @wishlist = Wishlist.find(params[:id])
    end
    
    def new
        @wishlist = Wishlist.new
    
    end
    def create
        @wishlist = Wishlist.new(wishlist_params)
        
        
        if @wishlist.save
            
            redirect_to @wishlist
           else
               render 'new'
        end
        
        
    #    render plain: params[:articles].inspect
    end
    def edit
        @wishlist = Wishlist.find(params[:id])
    end
    def update
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



