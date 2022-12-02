class Reservation < ApplicationRecord

    validates :city , presence :true
    validates :date , presence :true
end
