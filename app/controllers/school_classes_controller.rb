class SchoolClassesController < ApplicationController

  def index
    @school_classes = SchoolClass.all
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(params.require(:school_class).permit(:title, :room_number))
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(params.require(:post).permit(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end
end
