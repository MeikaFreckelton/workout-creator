json.extract! exercise_info, :id, :name, :reps, :time, :sets, :weight_needed, :equipment_needed, :user_id, :workout_info_id, :created_at, :updated_at
json.url exercise_info_url(exercise_info, format: :json)
