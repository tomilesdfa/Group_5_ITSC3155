class Expense < ApplicationRecord
     has_many :expenses
     validates :description, presence: true, length: { minimum: 1 }
    validates :price, presence: true, length: { minimum: 1 }
   

end
