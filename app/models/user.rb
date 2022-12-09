class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         validates :name, presence: true
         validates :password, presence: true
         validates :email, presence: true

  has_many :reservation , foreign_key: 'user_id' ,  dependent: :destroy

end
