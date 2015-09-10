#If I am 1233 million seconds old, how old am I?
my_age_in_seconds = 1233000000

seconds_in_minute = 60
minutes_in_hour = 60
hours_in_day = 24
days_in_month = 30
months_in_year = 12

my_age_in_minutes = my_age_in_seconds / seconds_in_minute
my_age_in_seconds = my_age_in_seconds % seconds_in_minute

my_age_in_hours = my_age_in_minutes / minutes_in_hour
my_age_in_minutes = my_age_in_minutes % minutes_in_hour

my_age_in_days = my_age_in_hours / hours_in_day
my_age_in_hours = my_age_in_hours % hours_in_day

my_age_in_month = my_age_in_days / days_in_month
my_age_in_days = my_age_in_days % days_in_month

my_age_in_years = my_age_in_month / months_in_year
my_age_in_month = my_age_in_month % months_in_year

puts 'My age is ' + my_age_in_years.to_s + ' years ' + my_age_in_month.to_s + ' months ' + my_age_in_days.to_s + ' days ' +
		 			my_age_in_hours.to_s + ' hours ' + my_age_in_minutes.to_s + ' minutes ' + my_age_in_seconds.to_s + ' seconds.'