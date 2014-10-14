# 5 points
#
# Write a program that displays the lyrics to the beloved nursery rhyme
# "3 Bottles of Beer on the Wall".
#
# Here's how the program must work:
#
#   $ ruby exercise1.rb
#   3 bottles of beer on the wall, 3 bottles of beer!
#   Take one down, pass it around, 2 bottles of beer on the wall!
#   2 bottles of beer on the wall, 2 bottles of beer!
#   Take one down, pass it around, 1 bottle of beer on the wall!
#   1 bottle of beer on the wall, 1 bottle of beer!
#   Take one down, pass it around, no more bottles of beer on the wall!
#   No more bottles of beer on the wall, no more bottles of beer!
#   Go to the store and buy some more, 3 bottles of beer on the wall!
#
# TIP: I expect you to use a loop.

# run bin/rspec before you code to see what it wants
# this will work but it needs to loop!
=begin
puts '3 bottles of beer on the wall, 3 bottles of beer!'
puts 'Take one down, pass it around, 2 bottles of beer on the wall!'
puts '2 bottles of beer on the wall, 2 bottles of beer!'
puts 'Take one down, pass it around, 1 bottle of beer on the wall!'
puts '1 bottle of beer on the wall, 1 bottle of beer!'
puts 'Take one down, pass it around, no more bottles of beer on the wall!'
puts 'No more bottles of beer on the wall, no more bottles of beer!'
puts 'Go to the store and buy some more, 3 bottles of beer on the wall!'
  What needs to be repeated? lines 23-28

# if you encounter a loop, PRESS CONTROL + C !!!!!!!!
# Following will create an infinite loop....
loop do
  puts '3 bottles of beer on the wall, 3 bottles of beer!'
  puts 'Take one down, pass it around, 2 bottles of beer on the wall!'
  puts '2 bottles of beer on the wall, 2 bottles of beer!'
  puts 'Take one down, pass it around, 1 bottle of beer on the wall!'
  puts '1 bottle of beer on the wall, 1 bottle of beer!'
  puts 'Take one down, pass it around, no more bottles of beer on the wall!'
  puts 'No more bottles of beer on the wall, no more bottles of beer!'
  puts 'Go to the store and buy some more, 3 bottles of beer on the wall!'
end
=end

bottles = 3
word = 'bottles'

loop do
  puts "#{bottles} #{word} of beer on the wall, #{bottles} #{word} of beer!"

  bottles -= 1

  bottles = 'no more' if bottles == 0

  if bottles == 1
    word = 'bottle'
  else
    word = 'bottles'
  end

  puts "Take one down, pass it around, #{bottles} #{word} of beer on the wall!"

  break if bottles == 'no more'
end

puts 'No more bottles of beer on the wall, no more bottles of beer!'
puts 'Go to the store and buy some more, 3 bottles of beer on the wall!'
