class CreateEnrollments < ActiveRecord::Migration[5.2]
  def change
    create_table :enrollments do |t|
      t.integer :Student_id
      t.integer :ClassGroup_id

      t.timestamps
    end
  end
end
