require "test_helper"


describe "Boleta estudiantil" do
	
	describe "cuando agrego las tres notas" do
		
		before do
			@materia = ControlDeEstudios::Materia.new(name: "Programación")
			@estudiante = ControlDeEstudios::Estudiante.new

			@curso = ControlDeEstudios::Curso.new(
					materia: @materia,
					estudiante: @estudiante
				)
		end	

		it "debe darme la nota definitiva" do

			@curso.add_nota(:primer_lapso, 12)
			@curso.add_nota(:segundo_lapso, 12)
			@curso.add_nota(:tercer_lapso, 12)

			assert_equal 12, @curso.nota_definitiva
			
		end

		it "debo saber la nota de un determinado lapso" do

			@curso.add_nota(:primer_lapso, 20)

			assert_equal 20, @curso.get_nota(:primer_lapso)

		end

	end

end