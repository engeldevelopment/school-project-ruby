module School

	SpanUnknow = Class.new(StandardError)
	SpanParamNotIsValid = Class.new(TypeError)

	class Course
		
		def initialize(asignature:, student:)
			@asignature = asignature
			@student = student
			@califications = {}
		end

		def add_calification(span, calification)

			raise SpanParamNotIsValid unless span.is_a? Symbol
			
			raise SpanUnknow unless /^(first|second|third)_span$/.match? span.to_s

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