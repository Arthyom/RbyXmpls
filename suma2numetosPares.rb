=begin 
	verificar la suma para cada numero par en un intevalo 
=end
n = gets.chomp
m = gets.chomp

suma = 0 

	for numero in n..m do 
		if ( numero % 2 == 0)
			print ' + ', numero
			suma += numero
		end
	end
	print ' = ', suma

