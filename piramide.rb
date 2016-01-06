caracter = '0'#gets.chomp
numeroMax = 6#gets.chomp

# numero par
if ( numeroMax % 2 != 0)
	numeroMax.times do |element|
		if (element == numeroMax/2)
			puts "#{caracter}" * numeroMax
		else
			puts "#{caracter}"
		end
	end
else
	#numero non
	numeroMax.times do |element|
		if (element == numeroMax/2 - 1 || element == numeroMax/2)
			puts "#{caracter}" * numeroMax
		else
			puts "#{caracter}"
		end
	end
end
