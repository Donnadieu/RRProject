class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :FirstName
      t.string :LastName
      t.string :NickName
      t.string :EmailAddress
      t.date :Birthday
      t.text :MedicalNotes
      t.integer :Grade
      t.string :School
      t.string :Gender

      t.timestamps
    end
  end
end
