
digitoLimite = 142#gets.chomp.to_i
digitoRango  = 1..digitoLimite.to_i
if (digitoLimite > 0 && digitoLimite < 10e4)
	if ( digitoRango.include? digitoLimite )
		rangoCadena = digitoRango.to_a[0..digitoLimite].join
		print rangoCadena.index(digitoLimite.to_s) + 1 
	end
end