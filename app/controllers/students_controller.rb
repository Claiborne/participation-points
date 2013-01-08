class StudentsController < ApplicationController

  def create
    @student = Student.create params[:student]
    if @student.save
      redirect_to '/students/new'
      flash[:success] = 'Student successfully added. Add another?'
    else
      render 'new'
    end
  end

  def new
    @student = Student.new
  end

  def show
    @student = Student.find params[:id]
  end

  def period1
    @students = Student.find_all_by_period '1'
  end

  def period2
    @students = Student.find_all_by_period '2'
  end

  def period3
    @students = Student.find_all_by_period '3'
  end

  def period4
    @students = Student.find_all_by_period '4'
  end

  def period_yb
    @students = Student.find_all_by_period 'YB'
  end

end
