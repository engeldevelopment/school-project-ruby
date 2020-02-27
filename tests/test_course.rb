require "test_helper"


describe School::Course do

	before do
		@asignature = School::Asignature.new name: "Programacion"
		@student = School::Student.new

		@course = School::Course.new(
				asignature: @asignature,
				student: @student
			)
	end	

	describe "cuando el lapso dado para agregar la nota no son estos [:first_span, :second_span, third_span]" do
		
		it "da error" do

			assert_raises(School::SpanUnknow) {
				@course.add_calification(:unknow, 20)
			}

			assert_raises(School::SpanUnknow) {
				@course.add_calification(:FIRST_SPAN, 20)
			}

		end	

	end

	describe 'cuando el lapso dado no es un símbolo' do
		
		it 'dará un error' do

			assert_raises(School::SpanParamNotIsValid) {
				not_is_sym = 20
				@course.add_calification(not_is_sym, 20)	
			}

		end
			
	end	
	
end