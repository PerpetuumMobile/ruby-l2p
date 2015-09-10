bottles = 99
plural = 's'
str1 = 'Take one down and pass it around, '
str2 = ' of beer on the wall'
str3 = ' bottle'
str5 = ' of beer.'
while bottles.to_s != 'no more'
	str4 = bottles.to_s + str3 + plural
	puts str4 + str2 + ', ' + str4 + str5
	bottles=bottles - 1
	plural = 's'*(bottles!=1 ? 1 : 0)
	if bottles == 0
		bottles = 'no more'
		plural = 's'
	end
	str4 = bottles.to_s + str3 + plural
	puts str1 + str4 + str2 + '.'
end
puts bottles.capitalize + str3 + plural + str2 + ', ' + str4 + str5
bottles = 99
str4 = bottles.to_s + str3 + plural
puts 'Go to the store and buy some more, ' + str4 + str2 + '.'