class StudentsController < ApplicationController

  def create
    @student = Student.create params[:student]
    redirect_to '/students/new'
  end

  def new
    @student = Student.new
  end

  def show
    @student = Student.find params[:id]
  end

end
