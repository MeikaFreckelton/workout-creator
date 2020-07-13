class FixColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :workout_infos, :type, :workout_type
  end
end
