class ExerciseInfo < ApplicationRecord
  belongs_to :user
  belongs_to :workout_info
end
