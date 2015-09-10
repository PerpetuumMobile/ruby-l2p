#Grandfather Clock
puts 'Description: 
Grandfather Clock.
Write a method which takes a block and calls it once for each hour that has passed today.
That way, if I were to pass in the block do puts \'DONG!\' end, it would chime (sort of) like a grandfather clock.
Test your method out with a few different blocks (including the one I just gave you).
Hint: You can use Time.now.hour to get the current hour.
However, this returns a number between 0 and 23, so you will have to alter those numbers in order to get ordinary clock-face numbers (1 to 12).'
puts

def old_clock &chime
	hours_now 		= Time.now.hour
	hours_now 		= hours_now % 12
	if hours_now == 0
		hours_now 	= 12
	end
	hours_now.times do
		chime.call
	end
end

old_clock do
	puts 'Dong!'
end