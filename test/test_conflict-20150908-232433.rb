my_age_in_seconds = 1233000000

today = Time.new

birth_time = today - my_age_in_seconds

puts 'My birth date is ' + birth_time.to_s