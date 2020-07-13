class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    
    def new
        @difficulty = ["beginner", "intermediate", "advanced", "other"]
        @workout_categories = ["strength or resistance training", "cardio", "HIIT", "other"]
        @muscle_groups = ["full body", "legs", "core", "arms", "back"]
    end
end
