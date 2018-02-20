class CreateEnrollments < ActiveRecord::Migration[5.2]
  def change
    create_table :enrollments do |t|
      t.integer :Student_id
      t.integer :Cclass_id

      t.timestamps
    end
  end
end
