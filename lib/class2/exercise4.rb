# 5 points
#
# Write a program that asks for a person's first name, then middle name,
# then last name, and then greets the person using their full name.
#
# Here's how the program must work:
#
#   $ ruby exercise4.rb    <<< that's the command you run
#   What's your first name?
#   Samuel <<user types first name
#   What's your middle name?
#   Leroy <<user types middle name
#   What's your last name?
#   Jackson <<user types last name
#   Nice to meet you, Samuel Leroy Jackson.
puts "What's your first name?"
first_name = gets.chomp
puts "What's your middle name?"
middle_name = gets.chomp
puts "What's your last name?"
last_name = gets.chomp
puts 'Nice to meet you, ' + first_name.capitalize +
  ' ' + middle_name.capitalize + ' ' + last_name.capitalize + '.'
