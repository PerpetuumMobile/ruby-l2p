#how many seconds old are you?
puts 'What is the year of your birth:'
your_year 			= gets.chomp.to_i
puts 'What is the month of your birth:'
your_month 			= gets.chomp.to_i
puts 'What is the day of your birth:'
your_day 			= gets.chomp.to_i

time_of_your_birth 	= Time.mktime(your_year, your_month, your_day)
today_time 			= Time.new

if today_time < time_of_your_birth
	puts 'You\'re from future!'
elif today_time == time_of_your_birth
	puts 'Happy birthday, newborn!'
else
	seconds_of_life = (today_time - time_of_your_birth).to_i
	puts 'Your seconds of life are almost equal to ' + seconds_of_life.to_s + '.'
end