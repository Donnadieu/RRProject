class StudentsController < ApplicationController

  def index
    @student = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def update
    @student = Student.find(params[:id])
    if @student.update_attributes(student_params)
      redirect_to @student
      flash[:alert] = "Information Updated"
    else
      render 'edit'
    end
  end

  def create
    @student = Student.new(student_params)
    if @student.save!
      redirect_to @student
      flash[:alert] = "Student Created"
    else
      render 'new'
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def destroy
    @student = Student.find(params[:id])
    flash[:confirm]
    @student.destroy
    redirect_to root_path
    flash[:alert] = "Student deleted"
  end

  private

  def student_params
    params.require(:student).permit(:FirstName, :LastName, :NickName, :EmailAddress, :Birthday, :MedicalNotes, 
                                    :Grade, :School, :Gender)
  end

end
