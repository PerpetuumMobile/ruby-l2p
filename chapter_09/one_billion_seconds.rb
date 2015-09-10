#One billion seconds
time_of_my_birth 	= Time.mktime(1982, 8, 7, 1)
puts 'I was born: ' + time_of_my_birth.to_s
seconds_of_my_life 	= time_of_my_birth.to_i
puts 'Seconds of my birth date: ' + seconds_of_my_life.to_s
billion_seconds_old = time_of_my_birth + 1000000
puts 'I was one billion seconds old at: ' + billion_seconds_old.to_s