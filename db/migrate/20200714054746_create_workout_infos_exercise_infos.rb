class CreateWorkoutInfosExerciseInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :workout_infos_exercise_infos do |t|
      t.references :workout_info, null: false, foreign_key: true
      t.references :exercise_info, null: false, foreign_key: true

      t.timestamps
    end
  end
end
