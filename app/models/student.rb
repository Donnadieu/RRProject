class Student < ApplicationRecord
	has_many :Enrollments
	has_many :ClassGroups, through: :Enrollments
end
