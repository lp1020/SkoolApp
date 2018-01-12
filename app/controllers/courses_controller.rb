class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
    @teacher = @course.teacher
    @students = @course.students
  end
end
