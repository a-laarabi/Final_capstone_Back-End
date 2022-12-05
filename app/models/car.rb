class Car < ApplicationRecord
    has_many :reservation , foreign_key: 'car_id' , dependent: :destroy
end
