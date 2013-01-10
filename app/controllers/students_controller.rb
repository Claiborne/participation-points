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
    @students = Student.find_all_by_period @student.period
  end

  def edit
    @student = Student.find params[:id]
  end

  def update
    @student = Student.find(params[:id])
    if @student.update_attributes params[:student]
      redirect_to @student
    else
      render 'edit'
    end
  end

  def destroy
    student = Student.find(params[:id])
    period = student.period
    student.delete
    #flash[:success] = 'User deleted'
    redirect_to "/period#{period}"
  end

  def period1
    @students = Student.find_all_by_period '1'
    @period = '1'
  end

  def period2
    @students = Student.find_all_by_period '2'
    @period = '2'
  end

  def period3
    @students = Student.find_all_by_period '3'
    @period = '3'
  end

  def period4
    @students = Student.find_all_by_period '4'
    @period = '4'
  end

  def period_yb
    @students = Student.find_all_by_period 'YB'
    @period = 'YB'
  end

  def increase
    s = Student.find params[:id]
    s.update_attribute(params[:attr], s.send(params[:attr])+1)
    redirect_to student_path params[:id]
  end

  def decrease
    s = Student.find params[:id]
    s.update_attribute(params[:attr], s.send(params[:attr])-1)
    redirect_to student_path params[:id]
  end

end
