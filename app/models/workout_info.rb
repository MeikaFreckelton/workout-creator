class WorkoutInfo < ApplicationRecord
  belongs_to :user
  validates :name, :difficulty, :muscle_groups, :workout_type, :user_id, presence: true
  has_one :exercise_info
end
