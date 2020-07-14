class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    has_many :workout_infos
    has_many :exercise_infos, through: :workout_infos
    has_one :user_info
    validates :email, presence: true
    validates :password, presence: true, length: {minimum: 8}

end
