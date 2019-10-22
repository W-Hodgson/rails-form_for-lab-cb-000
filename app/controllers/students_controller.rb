class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
  end

  def create
    @student = Student.new(params.require(:students).permit(:first_name, :last_name))
    @student.save
    redirect_to student_path(@student)
  end

  def edit
  end

  def create
  end

  def show
  end

end
