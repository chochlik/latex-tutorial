class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
  end

  def check
    @lesson = resource
    @lesson.validate_answer(params[:answer])
    render :show
  end

  def show
    @lesson = resource
  end

  def new
    @lesson = Lesson.new
  end

  def edit
    @lesson = resource
  end

  def create
    @lesson = Lesson.new(params[:lesson])

    if @lesson.save
      redirect_to @lesson, notice: 'Lesson was successfully created.'
    else
      render :new
    end
  end

  def update
    @lesson = resource

    if @lesson.update_attributes(params[:lesson])
      redirect_to @lesson, notice: 'Lesson was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @lesson = resource
    @lesson.destroy
    redirect_to lessons_url
  end

  private
    
  def resource
    Lesson.find(params[:id])
  end
end
