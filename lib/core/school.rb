module School

	SpanUnknow = Class.new(StandardError)
	SpanParamNotIsValid = Class.new(TypeError)


	class Span
		
		def self.check_that_is_valid_or_raise_error span
			raise SpanParamNotIsValid unless span.is_a? Symbol
			raise SpanUnknow unless /^(first|second|third)_span$/.match? span.to_s
		end
			
	end	

	class Course
		
		def initialize(asignature:, student:)
			@asignature = asignature
			@student = student
			@califications = {}
		end

		def add_calification(span, calification)
			
			Span.check_that_is_valid_or_raise_error span

			@califications[span] = calification

		end

		def get_calification(span)
			
			Span.check_that_is_valid_or_raise_error span
			
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