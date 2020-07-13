class CreateExerciseGalleries < ActiveRecord::Migration[6.0]
  def change
    create_table :exercise_galleries do |t|
      t.string :name
      t.text :description
      t.string :muscle_groups

      t.timestamps
    end
  end
end
