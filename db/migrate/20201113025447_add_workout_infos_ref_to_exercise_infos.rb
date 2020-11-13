class AddWorkoutInfosRefToExerciseInfos < ActiveRecord::Migration[6.0]
  def change
    add_reference :exercise_infos, :workout_infos, null: false, foreign_key: true
  end
end
