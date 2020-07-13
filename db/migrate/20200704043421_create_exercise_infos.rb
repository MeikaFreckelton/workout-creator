class CreateExerciseInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :exercise_infos do |t|
      t.string :name
      t.integer :reps
      t.integer :time
      t.integer :sets
      t.integer :weight_needed
      t.string :equipment_needed
      t.references :user, null: false, foreign_key: true
      t.references :workout_info, null: false, foreign_key: true

      t.timestamps
    end
  end
end
