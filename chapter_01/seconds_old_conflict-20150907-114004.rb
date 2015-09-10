#how many seconds old are you?
puts 'What is the year of your birth:'
your_year = gets.chomp.to_i
puts 'What is the month of your birth:'
your_month = gets.chomp.to_i
puts 'What is the day of your birth:'
your_day = gets.chomp.to_i

puts 'What is the year today:'
today_year = gets.chomp.to_i
puts 'What is the month today:'
today_month = gets.chomp.to_i
puts 'What is the day today:'
today_day = gets.chomp.to_i

days_in_a_year = 365
days_in_a_month = 30
seconds_in_a_day = 24 * 60 * 60

your_days = your_year * days_in_a_year + your_month * days_in_a_month + your_day
today_days = today_year * days_in_a_year + today_month * days_in_a_month + today_day

if today_days < your_days
	puts 'You\'re from future!'
elif today_days == your_days
	puts 'Happy birthday, newborn!'
else
	seconds_of_life = (today_days - your_days) * seconds_in_a_day
	puts 'Your seconds of life are equel to ' + seconds_of_life.to_s + '.'
end