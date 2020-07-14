class WorkoutInfosExerciseInfo < ApplicationRecord
  belongs_to :workout_info
  belongs_to :exercise_info
end
