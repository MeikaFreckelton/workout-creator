json.extract! exercise_gallery, :id, :name, :description, :muscle_groups, :created_at, :updated_at
json.url exercise_gallery_url(exercise_gallery, format: :json)
