=begin 
	desplegar la suma de 2 numeros en un rango de n...m
=end
n = gets.chomp
m = gets.chomp

suma = 0
	for numero in n..m do 
		print ' + ',numero
		suma += numero
	end
	puts ' '
	puts suma 
