class DropWorkoutInfosTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :exercise_infos
    drop_table :workout_infos
    
  end
end
