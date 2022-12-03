class Reservation < ApplicationRecord

    belongs_to :user , foregin_key: 'user_id' , class_name: 'User'
    belongs_to :car , foregin_key: 'car_id'
    
    validates :city , presence :true
    validates :date , presence :true
    
    
end
