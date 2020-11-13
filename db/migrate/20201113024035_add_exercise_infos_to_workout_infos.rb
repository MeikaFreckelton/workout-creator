class AddExerciseInfosToWorkoutInfos < ActiveRecord::Migration[6.0]
  def change
    drop_table :workout_infos_exercise_infos
   

  end
end
