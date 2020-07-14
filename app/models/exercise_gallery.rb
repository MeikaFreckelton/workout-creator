class ExerciseGallery < ApplicationRecord
    validates :name, :picture, :muscle_groups, presence: true
    has_one_attached :picture
    
end

# add validation
# does this need a relation?
# add enum for drop down options?

# figure out how to be able to remove/change photo