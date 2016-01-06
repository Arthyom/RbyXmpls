=begin 
	olimpiadas rusas 
=end

numeroFinal = 206788 #gets.chomp
cadenaNumeros = String.new
for numero in 1..numeroFinal do 
	cadenaNumeros<<numero.to_s
end
puts cadenaNumeros[numeroFinal-1]
