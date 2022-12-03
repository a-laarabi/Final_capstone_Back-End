class Car < ApplicationRecord
    has_many :reservation , dependent: :destroy
end
