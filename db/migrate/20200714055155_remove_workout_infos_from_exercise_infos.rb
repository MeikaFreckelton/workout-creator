class RemoveWorkoutInfosFromExerciseInfos < ActiveRecord::Migration[6.0]
  def change
    remove_column :exercise_infos, :workout_info_id
  end
end
