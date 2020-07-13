class ExerciseGalleriesController < ApplicationController
  before_action :set_exercise_gallery, only: [:show, :edit, :update, :destroy]

  # GET /exercise_galleries
  # GET /exercise_galleries.json
  def index
    @exercise_galleries = ExerciseGallery.all
  end

  # GET /exercise_galleries/1
  # GET /exercise_galleries/1.json
  def show
  end

  # GET /exercise_galleries/new
  def new
    
    @exercise_gallery = ExerciseGallery.new

  end

  # GET /exercise_galleries/1/edit
  def edit
  end

  # POST /exercise_galleries
  # POST /exercise_galleries.json
  def create
    @exercise_gallery = ExerciseGallery.new(exercise_gallery_params)

    respond_to do |format|
      if @exercise_gallery.save
        format.html { redirect_to @exercise_gallery, notice: 'Exercise gallery was successfully created.' }
        format.json { render :show, status: :created, location: @exercise_gallery }
      else
        format.html { render :new }
        format.json { render json: @exercise_gallery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exercise_galleries/1
  # PATCH/PUT /exercise_galleries/1.json
  def update
    respond_to do |format|
      if @exercise_gallery.update(exercise_gallery_params)
        format.html { redirect_to @exercise_gallery, notice: 'Exercise gallery was successfully updated.' }
        format.json { render :show, status: :ok, location: @exercise_gallery }
      else
        format.html { render :edit }
        format.json { render json: @exercise_gallery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exercise_galleries/1
  # DELETE /exercise_galleries/1.json
  def destroy
    @exercise_gallery.destroy
    respond_to do |format|
      format.html { redirect_to exercise_galleries_url, notice: 'Exercise gallery was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exercise_gallery
      @exercise_gallery = ExerciseGallery.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def exercise_gallery_params
      params.require(:exercise_gallery).permit(:name, :description, :muscle_groups, :picture)
    end
end
