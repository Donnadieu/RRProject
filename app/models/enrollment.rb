class Enrollment < ApplicationRecord

	belongs_to :ClassGroup
	belongs_to :student
end
