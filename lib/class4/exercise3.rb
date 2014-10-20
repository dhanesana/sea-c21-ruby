#!/usr/bin/env ruby
#
# 5 points
#
# Write a program that asks whether or not you like tacos:
#
# If you reply with 'y', then we're friends:
#
#   $ ruby exercise3.rb
#   Do you like eating tacos? (y or n)
#   y
#   We can be friends!
#
# If you reply with 'n', then we're enemies:
#
#   $ ruby exercise3.rb
#   Do you like eating tacos? (y or n)
#   n
#   Get out of my sight!
#
# And if you reply with **anything** else, you have to try again:
#
#   $ ruby exercise3.rb
#   Do you like eating tacos? (y or n)
#   maybe
#   Try again
#   Do you like eating tacos? (y or n)
#   y
#   We can be friends!
#
# TIP #1: You only need to change the `ask` method.
#
# TIP #2: Use `return` to preemptively exit the `ask` method.

=begin
# only change the method: the question change me
# following is a method
def ask(question) # question is a variable and also a parameter
  loop do
    puts question # outputting question to the terminal
    answer = gets.chomp # get user input
    # put answer in an if statement
    if answer == 'y'
      # puts 'We can be friends' doesn't work because puts returns nil
      # puts nil will basically just put a blank line
      # so get rid of the puts
      return 'We can be friends!' # return breaks out loop and returns string
    elsif answer == 'n'
      return 'Get out of my sight!'
    else
      puts 'Try again' # puts because it's not outputting anything without it
    end
  end
end
=end

# shorten above method like a pro rubyguy
# question is a variable and also a parameter
def ask(question)
  loop do
    puts question # outputting question to the terminal
    answer = gets.chomp # get user input
    # put answer in an if statement
    # puts 'We can be friends' doesn't work because puts returns nil
    # puts nil will basically just put a blank line
    # so get rid of the puts
    return 'We can be friends!' if answer == 'y'
    # return breaks out loop and returns string
    return 'Get out of my sight!' if answer == 'n'
    puts 'Try again' # puts because it's not outputting anything without it
  end
end

# puts method ask
puts ask('Do you like eating tacos? (y or n)') # the string is an argument
# the string argument goes into the parameter 'question'
# it only exists within the scope of the ask method
# can't just have 'puts ask' because it needs an argument or crash
