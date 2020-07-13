class CreateWorkoutInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :workout_infos do |t|
      t.string :name
      t.string :difficulty
      t.string :muscle_groups
      t.string :workout_type
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
