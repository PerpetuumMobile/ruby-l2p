#array sort program without using the sort method

words						= []
puts 'Enter the words:'
word 						= gets.chomp

while word != ''
	words.push word
	word 					= gets.chomp
end

if words.length == 0
	puts 'You are lazy son of bitch!'
else
	#puts words.sort
	sorted 					= false

	while not sorted
		sorted 				= true
		(words.length-1).times do |i|

			if words[i] > words[i+1]
				sorted 		= false
				buf 		= words[i]
				words[i] 	= words[i+1]
				words[i+1] 	= buf
			end

		end
	end

end
puts words