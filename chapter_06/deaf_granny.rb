isay=''
bye=0
while bye < 3
	isay=gets.chomp
	if isay=='BYE'
		bye=bye+1
	else
		bye=0		
	end
	if bye<3
		if isay != isay.upcase
			puts 'HUH?!  SPEAK UP, SONNY!'
		else
			puts 'NO, NOT SINCE ' + (1930+rand(21)).to_s + '!'
		end
	end
end