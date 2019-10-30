class WelcomeController < ApplicationController
  def index
    @missed = Wishlist.all
  @theUser = User.all
  end
end
