class WelcomeController < ApplicationController
  def index
    @missed = Wishlist.all
  
  end
end
