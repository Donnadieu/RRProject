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
  end

  def create
    @student = Student.new(student_params)
    if @student.save!
      redirect_to @student
    else
      render 'new'
    end
  end

  def edit
  end

  def destroy
  end

  private

  def student_params
    params.require(:student).permit(:FirstName, :LastName, :NickName, :EmailAddress, :Birthday, :MedicalNotes, :Grade, :School, :Gender)
  end

end
