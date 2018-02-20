class EnrollmentsController < ApplicationController
  
  def index
    @enrollment = Enrollment.find(enrollment_params)
  end

  def show
    #@enrollment = Enrollment.find(params[:Student_id, :Cclass_id])
  end

  def new
    #@enrollment.new
  end

  def update
  end

  def create
  end

  def edit
  end

  def destroy
  end

  private
    def enrollment_params
      params.require(:enrollment).permit(cclass_ids:[], student_id:[])
    end
end
