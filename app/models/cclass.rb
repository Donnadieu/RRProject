class Cclass < ApplicationRecord

	has_many :enrollments
	has_many :students, through: :enrollments

end
