=begin 
	lista de extraña 
	calcula 
		* minimo 
		* maximo 
		* desviacion tipica
		* media 
=end 

def crearLista 	  ( numeroLimite )
	intervalo = 0..numeroLimite
	return intervalo.to_a.shuffle
end

def listaMin 	  ( lista )
	minimo = lista[0].to_i
	lista.each do |elemnt|
		if ( elemnt.to_i < minimo )
			minimo = elemnt
		end
	end
	return minimo
end

def listaMax 	  ( lista )
	maximo = lista[0].to_i
	lista.each do |elemnt|
		if ( elemnt.to_i > maximo.to_i )
			maximo = elemnt
		end
	end
	return maximo
end

def imprimirlista ( lista )
	puts' '
	lista.each do |elemnt|
		print elemnt, ' '
	end
	puts' '
end

def mediaArtm	  ( lista )
	media = 0
	lista.each do |elemnt|
		media += elemnt.to_i
	end

	media = media/lista.size 
	return media
end

def desvEstandar  ( lista, media )
	suma = 0 
	lista.each do |elemnt|
		suma += (media - elemnt.to_i) **2 
	end
	return suma ** 0.5
end

### script principal
listaRango = crearLista(10)
imprimirlista listaRango
puts " minimo -> #{listaMin(listaRango)}  maximo -> #{listaMax(listaRango)}"
puts " media -> #{mediaArtm(listaRango)}  desv. Estandar #{desvEstandar(listaRango, mediaArtm(listaRango)).round(3)}"

