class Enrollment < ApplicationRecord

	belongs_to :student
	belongs_to :cclass
	
end
