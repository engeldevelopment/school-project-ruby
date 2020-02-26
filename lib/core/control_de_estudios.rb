module School

	class Course
		
		def initialize(asignature:, student:)
			@asignature = asignature
			@student = student
			@califications = {}
		end

		def add_calification(span, calification)
			@califications[span] = calification
		end

		def get_calification(span)
			@califications[span]
		end	

		def definitive_calification
			result = 0
			@califications.each_value { |value| result += value }
			result / @califications.size
		end
	
	end

	class Student
		
		def initialize
		end
			
	end	

	class Asignature
		
		def initialize(name:)
			@name = name
		end

	end	

end