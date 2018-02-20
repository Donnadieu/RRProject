class Student < ApplicationRecord

	has_many :enrollments
	has_many :cclasses, through: :enrollments
	
end
