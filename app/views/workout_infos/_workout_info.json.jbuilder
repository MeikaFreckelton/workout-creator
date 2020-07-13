json.extract! workout_info, :id, :name, :difficulty, :muscle_groups, :workout_type, :user_id, :created_at, :updated_at
json.url workout_info_url(workout_info, format: :json)
