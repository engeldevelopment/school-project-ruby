
module ControlDeEstudios

	class Curso
		
		def initialize(materia:, estudiante:)
			@materia = materia
			@estudiante = estudiante
			@notas = {}
		end

		def add_nota(lapso, nota)
			@notas[lapso] = nota
		end

		def get_nota(lapso)
			@notas[lapso]
		end	

		def nota_definitiva
			suma = 0
			@notas.each_value { |value| suma += value }
			suma / @notas.size
		end	
	
	end

	class Estudiante
		
		def initialize
		end
			
	end	

	class Materia
		
		def initialize(name:)
			@name = name
		end

	end	

end