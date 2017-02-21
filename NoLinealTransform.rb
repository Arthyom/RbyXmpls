=begin

T[p] = round( 255  * Hc[i] )	
			 -----
			  MN
=end

## recibir los pixeles de la imagen como texto y convertirlos a enteros 
def transformarEntradas 	( vectorImagenTexto )
	vectorImagenTexto = vectorImagenTexto.split ' '
	vectorImagenEntero = Array.new 
	vectorImagenTexto.each do |numero|
		vectorImagenEntero<<numero.to_i
	end

	return vectorImagenEntero;
end

## realizar la transformacion no lineal 
def nonLinealTransform 		( vectorImagenEntero, m, n )

	int_vectorImagenTransformada = Array.new()

	vectorImagenEntero.each do |numero|
		#print ((255.0/(m*n)) * numero).to_s + ' '
		int_numeroTransformado =  ((255.0/(m*n)) * numero).to_f.round(0)
		int_vectorImagenTransformada<<(int_numeroTransformado)
	end

	return int_vectorImagenTransformada
end

## desplegar la salida en un archivo de texto
def writeImageMatrix		( str_RutaMatrizconvertida, int_imagenConvertida )

	archivo = File.open( str_RutaMatrizconvertida, 'w')
	int_imagenConvertida.each do |numero|
		archivo.print( numero.to_s,' ' )
	end
	archivo.close()
end

def main 					( )
	args = ARGV.to_ary()
	ruta = 'hola.txt' 
	entrada = args[ 0,args.length() - 2 ].to_a.join(' ')
	int_m   = args[ args.length() - 1 ].to_i
	int_n   = args[ args.length() - 2 ].to_i


	int_imagenIntencidad = transformarEntradas(entrada)
	int_imagenConvertida = nonLinealTransform( int_imagenIntencidad, int_m, int_n)
	writeImageMatrix(ruta,int_imagenConvertida)
	print int_imagenConvertida
end

main()
