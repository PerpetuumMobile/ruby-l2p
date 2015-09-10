#Write a program which asks for a person's favorite number. Have your program add one to the number, then suggest the result as a bigger and better favorite number.
puts 'What is your favorite number?'
your_number = gets.chomp.to_i
my_number = your_number + 1
puts 'My number ' + my_number.to_s + ' is bigger and better than yours.  :P'