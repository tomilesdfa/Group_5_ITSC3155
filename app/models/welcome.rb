class Expense < ApplicationRecord
     belongs_to :wishlists
     has_many :expenses
     has_many :wishlists
   

end
