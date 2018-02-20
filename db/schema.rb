# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_02_18_193642) do

  create_table "cclasses", force: :cascade do |t|
    t.string "Class_Name"
    t.string "Model"
    t.text "Description"
    t.string "SkillLevel"
    t.string "TechUsed"
    t.string "Special"
    t.string "Grades"
    t.string "Competition"
    t.string "Session"
    t.string "CalendarYear"
    t.string "Facility"
    t.string "Room"
    t.string "InstructorFirstName"
    t.string "InstructorLastName"
    t.string "InstructorEmail"
    t.string "InstructorPhone"
    t.string "DaysOfWeek"
    t.string "WeekOfYear"
    t.time "StartTime"
    t.time "EndTime"
    t.integer "DurationTime"
    t.date "StartDate"
    t.date "EndDate"
    t.integer "DurationWeeks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "enrollments", force: :cascade do |t|
    t.integer "Student_id"
    t.integer "Cclass_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "FirstName"
    t.string "LastName"
    t.string "NickName"
    t.string "EmailAddress"
    t.date "Birthday"
    t.text "MedicalNotes"
    t.integer "Grade"
    t.string "School"
    t.string "Gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
