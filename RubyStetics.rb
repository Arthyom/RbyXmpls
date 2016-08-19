=begin
	libreria para la mejora grafica de programas entrados desde la terminal
	contiene metodos para el dibujo de elementos como tablas, menus, etc
=end


	################################# definir fuciones 
	def ImprimirCajaDoble( textoEntrada, espacios )
		lineaDobleBaja = ''
		###posicionar la caja 
		print " " * espacios
		### imprimir caracteres superires 
		print  '_' * (textoEntrada.length + 4) 
		puts ' '

		### imprimir texto interno 
	    ###posicionar la caja 
		print " " * espacios
		puts "| #{textoEntrada} |"

		###posicionar la caja 
		print " " * espacios
		### imprimir caracteres inferiores 
		print  '_' * (textoEntrada.length + 4)
	end

	def ImprimirEncavezados ( espacios, * numeroColumnas ) 
		lineaDobleBaja = ''
		suma = 0

		###posicionar la caja 
		print " " * espacios

		numeroColumnas.each do |columna|
			suma += columna.length
		end

		### imprimir caracteres inferiores 
		print  '_' * (suma + 4)

		### imprimir texto interno 
	    ###posicionar la caja 
		print " " * espacios
		print '| '
		numeroColumnas.each do |columna|
			print columna, ' | '
		end

		puts " "

		print  '_' * (suma + 4)
	end

	#ImprimirCajaDoble( "este el texto de entrada", 10)
	ImprimirEncavezados( 10, "rec", "sub", "sub1", "sub3" )