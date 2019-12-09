require 'rails_helper.rb'

feature"User views description of expense" do
    scenario "User successfully views description of expense" do
        visit expenses_path
        expect(page).to have_content("FUNDs")
        click_link "New Expense"
        expect(page).to have_content("Please Enter the Information to Add an Expense")
        expect(page).to have_field("Description")
    end
end

feature"User views price of expense" do
    scenario "User successfully views price of expense" do
        visit expenses_path
        expect(page).to have_content("FUNDs")
        click_link "New Expense"
        expect(page).to have_content("Please Enter the Information to Add an Expense")
        expect(page).to have_field("Price")
    end
end

feature"User views description of items on wishlist" do
    scenario "User successfully views description of items on wishlist" do
        visit wishlists_path
        expect(page).to have_content("FUNDs")
        click_link "New Wishlist Item"
        expect(page).to have_content("Add WishList Item")
        expect(page).to have_field("Description")
    end
end

feature"User views price of items on wishlist" do
    scenario "User successfully views price of items on wishlist" do
        visit wishlists_path
        expect(page).to have_content("FUNDs")
        click_link "New Wishlist Item"
        expect(page).to have_content("Add WishList Item")
        expect(page).to have_field("Price")
    end
end



#expect(page).to have_field("Description")
#expect(page).to have_field("Price")