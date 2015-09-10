#Happy Birthday!
puts 'What is the year of your birth?'
birth_year 	= 1982	#gets.chomp
puts 'What is the month of your birth?'
birth_month = 8		#gets.chomp
puts 'What is the day of your birth?'
birth_day 	= 7		#gets.chomp
birth_time 	= Time.mktime(birth_year, birth_month, birth_day)
today_time 	= Time.new
years_old 	= (today_time.to_i - birth_time.to_i) / (60 * 60 * 24 * 365)
puts 'SPANK! ' * years_old