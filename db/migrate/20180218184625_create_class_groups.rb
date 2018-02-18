class CreateClassGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :class_groups do |t|
      t.string :Name
      t.string :Model
      t.text :Description
      t.string :SkillLevel
      t.string :TechUsed
      t.string :Special
      t.string :Grades
      t.string :Competition
      t.string :Session
      t.string :CalendarYear
      t.string :Facility
      t.string :Room
      t.string :InstructorFirstName
      t.string :InstrutorLastName
      t.string :InstructorEmail
      t.string :InstructorPhone
      t.string :DaysOfWeek
      t.string :WeekOfYear
      t.time :StartTime
      t.time :EndTime
      t.integer :DurationTime
      t.date :StartDate
      t.date :EndDate
      t.integer :DurationWeeks

      t.timestamps
    end
  end
end
