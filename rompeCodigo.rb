=begin
	rompe la contraseña del doctor maligno 
=end

seleccion = ['R','A','M','V','N','I'].shuffle!
clave = seleccion[0..3]
claveEntrada = ['R','R','V','N']#Array.new(4){|elemnt| elemnt = gets.chomp}
coincidencia = Array.new

clave.length.times do |indx|
	if (claveEntrada[indx] == clave[indx] )
		coincidencia[indx] = '*'
		claveEntrada[indx] = '*'
		clave[indx] ='*'
	end
end

# primera pasada poner X
clave.each do |elemnt|
	if (  claveEntrada.include?(elemnt) &&  elemnt != '*' )
		coincidencia.push 'X'
	end
end
print clave,"\n"
print claveEntrada,"\n"
print coincidencia.compact.sort.reverse

