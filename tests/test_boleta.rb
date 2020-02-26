require "test_helper"


describe "Boleta estudiantil" do
	
	describe "cuando agrego las tres notas" do
		
		before do
			@materia = School::Asignature.new(name: "Programación")
			@estudiante = School::Student.new

			@curso = School::Course.new(
					asignature: @materia,
					student: @estudiante
				)
		end	

		it "debe darme la nota definitiva" do

			@curso.add_calification(:first_span, 12)
			@curso.add_calification(:second_span, 12)
			@curso.add_calification(:third_span, 12)

			assert_equal 12, @curso.definitive_calification
			
		end

		it "debo saber la nota de un determinado lapso" do

			@curso.add_calification(:first_span, 20)

			assert_equal 20, @curso.get_calification(:first_span)

		end

	end

end