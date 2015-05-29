class LessonImageInfosController < ApplicationController
  before_action :set_lesson_image_info, only: [:show, :edit, :update, :destroy]

  # GET /lesson_image_infos
  # GET /lesson_image_infos.json
  def index
    @lesson_image_infos = LessonImageInfo.all
  end

  # GET /lesson_image_infos/1
  # GET /lesson_image_infos/1.json
  def show
  end

  # GET /lesson_image_infos/new
  def new
    @lesson_image_info = LessonImageInfo.new
  end

  # GET /lesson_image_infos/1/edit
  def edit
  end

  # POST /lesson_image_infos
  # POST /lesson_image_infos.json
  def create
    @lesson_image_info = LessonImageInfo.new(lesson_image_info_params)

    respond_to do |format|
      if @lesson_image_info.save
        format.html { redirect_to @lesson_image_info, notice: 'Lesson image info was successfully created.' }
        format.json { render :show, status: :created, location: @lesson_image_info }
      else
        format.html { render :new }
        format.json { render json: @lesson_image_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lesson_image_infos/1
  # PATCH/PUT /lesson_image_infos/1.json
  def update
    respond_to do |format|
      if @lesson_image_info.update(lesson_image_info_params)
        format.html { redirect_to @lesson_image_info, notice: 'Lesson image info was successfully updated.' }
        format.json { render :show, status: :ok, location: @lesson_image_info }
      else
        format.html { render :edit }
        format.json { render json: @lesson_image_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lesson_image_infos/1
  # DELETE /lesson_image_infos/1.json
  def destroy
    @lesson_image_info.destroy
    respond_to do |format|
      format.html { redirect_to lesson_image_infos_url, notice: 'Lesson image info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson_image_info
      @lesson_image_info = LessonImageInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lesson_image_info_params
      params.require(:lesson_image_info).permit(:lesson_id, :title, :lesson_image)
    end
end
