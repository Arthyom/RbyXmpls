=begin 
	los numeros de armstrong son numeros donde la suma de cada digito elevetado
	a la cantidad de digitos del numero es igual al numero original 
=end

def armstrong (numeroEntrada) 
	suma = 0 
	numeroEntrada.each_char do |digito|
		suma += digito.to_i**numeroEntrada.length
	end

	if ( numeroEntrada.to_i == suma )
		puts " #{numeroEntrada} -> Armstrong "
	else
		puts " #{numeroEntrada} -> no Armstrong"
	end
end


# leer como cadena 
inicio = 0#gets.chomp
fin    = 10#gets.chomp

# verificar cada numero 
for numero in inicio..fin do 
	armstrong(numero.to_s)
end


