class Reservation < ApplicationRecord

    belongs_to :user , foreign_key: 'user_id' , class_name: 'User'
    belongs_to :car , foreign_key: 'car_id'
    
    validates :city , :date  , presence: :true
 
    
    
end
