class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
  end

  def check
    @lesson = Lesson.find(params[:id])
    @lesson.validate_answer(params[:answer])
    render :show
  end

  def show
    @lesson = Lesson.find(params[:id])
  end
end
