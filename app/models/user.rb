class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    has_many :workout_info
    has_many :exercise_info 
    has_one :user_info
    validates :name, :email, presence: true
    validates :password, presence: true, length: {minimum: 8}

end
