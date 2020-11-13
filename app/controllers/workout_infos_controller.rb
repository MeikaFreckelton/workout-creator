class WorkoutInfosController < ApplicationController
  before_action :set_workout_info, only: [:show, :edit, :update, :destroy]
  before_action :set_dropdowns, only: [:new, :edit]

  # GET /workout_infos
  # GET /workout_infos.json
  def index
    @workout_infos = WorkoutInfo.all
    
  end

  # GET /workout_infos/1
  # GET /workout_infos/1.json
  def show
  end

  # GET /workout_infos/new
  def new
    # @difficulty = ["beginner", "intermediate", "advanced", "other"]
    # @workout_categories = ["strength or resistance training", "cardio", "HIIT", "other"]
    # @muscle_groups = ["full body", "legs", "core", "arms", "back"]
    @workout_info = WorkoutInfo.new
    @exericse 
  end

  # GET /workout_infos/1/edit
  def edit
    
  end

  # POST /workout_infos
  # POST /workout_infos.json
  def create
    @workout_info = WorkoutInfo.new(workout_info_params)

    @workout_info.user_id = current_user.id
    respond_to do |format|
      if @workout_info.save
        format.html { redirect_to @workout_info, notice: 'Workout info was successfully created.' }
        format.json { render :show, status: :created, location: @workout_info }
      else
        format.html { render :new }
        format.json { render json: @workout_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workout_infos/1
  # PATCH/PUT /workout_infos/1.json
  def update
    respond_to do |format|
      if @workout_info.update(workout_info_params)
        format.html { redirect_to @workout_info, notice: 'Workout info was successfully updated.' }
        format.json { render :show, status: :ok, location: @workout_info }
      else
        format.html { render :edit }
        format.json { render json: @workout_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workout_infos/1
  # DELETE /workout_infos/1.json
  def destroy
    @workout_info.destroy
    respond_to do |format|
      format.html { redirect_to workout_infos_url, notice: 'Workout info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workout_info
      @workout_info = WorkoutInfo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def workout_info_params
      params.require(:workout_info).permit(:name, :difficulty, :muscle_groups, :workout_type, :user_id)
    end
    
    # set options for drop down menus when creating new workout
    def set_dropdowns
      @difficulty = ["beginner", "intermediate", "advanced", "other"]
      @workout_categories = ["strength or resistance training", "cardio", "HIIT", "other"]
      @muscle_groups = ["full body", "legs", "core", "arms", "back"]
    end
end
