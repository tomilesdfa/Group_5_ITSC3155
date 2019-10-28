class User < ApplicationRecord
     validates :firstName, presence: true, length: { minimum: 0 }
    validates :lastName, presence: true, length: { minimum: 0 }
     validates :email, presence: true, length: { minimum: 0 }
    validates :userName, presence: true, length: { minimum: 0 }
     validates :password, presence: true, length: { minimum: 0 }
   
end
