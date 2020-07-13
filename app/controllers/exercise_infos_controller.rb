class ExerciseInfosController < ApplicationController
  before_action :set_exercise_info, only: [:show, :edit, :update, :destroy]

  # GET /exercise_infos
  # GET /exercise_infos.json
  def index
    @exercise_infos = ExerciseInfo.all
  end

  # GET /exercise_infos/1
  # GET /exercise_infos/1.json
  def show
  end

  # GET /exercise_infos/new
  def new
    @exercises = ExerciseGallery.all
    # @exercises = @exercises.map{|e| e.name}
    @exercise_info = ExerciseInfo.new
  end

  # GET /exercise_infos/1/edit
  def edit
  end

  # POST /exercise_infos
  # POST /exercise_infos.json
  def create
    @exercise_info = ExerciseInfo.new(exercise_info_params)

    respond_to do |format|
      if @exercise_info.save
        format.html { redirect_to @exercise_info, notice: 'Exercise info was successfully created.' }
        format.json { render :show, status: :created, location: @exercise_info }
      else
        format.html { render :new }
        format.json { render json: @exercise_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exercise_infos/1
  # PATCH/PUT /exercise_infos/1.json
  def update
    respond_to do |format|
      if @exercise_info.update(exercise_info_params)
        format.html { redirect_to @exercise_info, notice: 'Exercise info was successfully updated.' }
        format.json { render :show, status: :ok, location: @exercise_info }
      else
        format.html { render :edit }
        format.json { render json: @exercise_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exercise_infos/1
  # DELETE /exercise_infos/1.json
  def destroy
    @exercise_info.destroy
    respond_to do |format|
      format.html { redirect_to exercise_infos_url, notice: 'Exercise info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exercise_info
      @exercise_info = ExerciseInfo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def exercise_info_params
      params.require(:exercise_info).permit(:name, :reps, :time, :sets, :weight_needed, :equipment_needed, :user_id, :workout_info_id)
    end
end
