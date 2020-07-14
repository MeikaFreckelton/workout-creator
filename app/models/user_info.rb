class UserInfo < ApplicationRecord
  belongs_to :user
  validates :name, :weight, :height, :date_of_birth, presence: true
  has_one_attached :picture
end
