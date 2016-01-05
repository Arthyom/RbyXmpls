=begin 
	frase palindroma 
		entra una cadena de texto, sale un si o no, segun sea o no palindroma 
=end
palabraEntrada =  #gets.chomp
puts palabraEntrada.delete! ' '

if (palabraEntrada.reverse == palabraEntrada)
	puts "si #{palabraEntrada.reverse} -> #{palabraEntrada}"
else
	puts "no #{palabraEntrada.reverse} -> #{palabraEntrada}"
end