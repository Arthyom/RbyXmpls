=begin 	
	crapulo
		la suma de cada digito de un numero hasta qe unicamente se
		consiga un solo numero  de un 1 digito
=end

def crapulo ( numeroCadena )
	suma = 0 
	numeroCadena.each_char do |digito|
		suma += digito.to_i
	end

	if ( suma.to_s.length > 1 ) then 
		crapulo(suma.to_s)
	else
		return suma
	end
end

numeroEntrada = '847' #gets.chomp
if ( numeroEntrada.to_i > 0) then
	puts " #{numeroEntrada} -> #{crapulo(numeroEntrada)}"
end