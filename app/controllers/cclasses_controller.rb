class CclassesController < ApplicationController

  def index
    @cclass = Cclass.all
  end

  def show
    @cclass = Cclass.find(params[:id])
  end

  def new
    @cclass = Cclass.new
  end

  def update
     @cclass = Cclass.find(params[:id])
    if @cclass.update_attributes(cclass_params)
      redirect_to @cclass
      flash[:alert] = "Class Updated"
    else
      render 'edit'
    end
  end

  def create
     @cclass = Cclass.new(cclass_params)
    if @cclass.save!
      redirect_to @cclass
      flash[:alert] = "Class Created"
    else
      render 'new'
    end
  end

  def edit
    @cclass = Cclass.find(params[:id])
  end

  def destroy
    @cclass = Cclass.find(params[:id])
    flash[:confirm]
    @cclass.destroy
    redirect_to root_path
    flash[:alert] = "Class Deleted"
  end

  private

    def cclass_params
      params.require(:cclass).permit(:Class_Name, :Model, :Description, :SkillLevel, :TechUsed, :Special, :Grades, :Competition, 
                                     :Session, :CalendarYear, :Facility, :Room, :InstructorFirstName, :InstructorLastName,
                                     :InstructorEmail, :InstructorPhone, :DaysOfWeek, :WeekOfYear, :StartTime, :EndTime, 
                                     :DurationTime, :StartDate, :EndDate, :DurationWeeks)
  end
end
