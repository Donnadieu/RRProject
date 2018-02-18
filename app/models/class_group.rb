class ClassGroup < ApplicationRecord

	has_many :Enrollments
	has_many :students, through: :Enrollments
end
