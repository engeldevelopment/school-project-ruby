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

	describe "#add_calification" do

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


	describe '#get_calification' do

		describe 'cuando el lapso no son ningúno de estos: [:first_span, :second_span, :third_span]' do

			it "dará error" do

				@course.add_calification :first_span, 20

				assert_raises(School::SpanUnknow) {
					@course.get_calification :x
				}

				assert_raises(School::SpanUnknow) {
					@course.get_calification :SECOND_SPAN
				}

				assert_raises(School::SpanUnknow) {
					@course.get_calification :unknow
				}

			end	

		end	

	end	
	
end