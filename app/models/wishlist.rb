class Wishlist < ApplicationRecord
    
     validates :description, presence: true, length: { minimum: 1 }
     validates :price, presence: true, length: { minimum: 1 }, numericality: {greater_than: 0}
end
