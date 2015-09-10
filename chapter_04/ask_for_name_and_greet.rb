#Write a program which asks for a person's first name, then middle, then last. Finally, it should greet the person using their full name.
puts 'What is your first name?'
fname = gets.chomp
puts 'What is your middle name?'
mname = gets.chomp
puts 'What is your last name?'
lname = gets.chomp

name = fname + ' ' + mname + ' ' + lname
puts 'Pleased to meet you, ' + name + '.  :)'