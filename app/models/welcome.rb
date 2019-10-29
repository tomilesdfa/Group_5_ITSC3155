class Expense < ApplicationRecord
     has_many :expenses
     has_many :wishlists
   

end
