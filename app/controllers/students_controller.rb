class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
  end

  def create
    @student = Student.create()
  end

  def edit
  end

  def create
  end

  def show
  end

end
