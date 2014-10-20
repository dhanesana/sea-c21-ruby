#!/usr/bin/env ruby
#
# 5 points
#
# In the early days of Roman numerals, the Romans didn't bother with any of this
# new-fangled subtraction 'IX' nonsense. No sir, it was straight addition,
# biggest to littlest - so 9 was written 'VIIII' and so on.
#
# Write a method that, when passed any integer between 1 and 1000, it returns a
# string containing the proper old-school Roman numeral. In other words:
#
#   $ ruby exercise4.rb 9
#   VIIII
#
# TIP #1: Here's a mapping of Roman to Arabic numerals:
#
#   1000 = M
#    500 = D
#    100 = C
#     50 = L
#     10 = X
#      5 = V
#      1 = I
#
# TIP #2: Use the integer division and modulus methods on page 32.
#
# TIP #3: You only need to change the `old_school_roman_numeral` method.

# rubocop:disable MethodLength
def old_school_roman_numeral(num)
  x = ''
  x += 'M' if num == 1000
  x += 'D' if num >= 500 && num < 1000
  x += 'C' * ((num / 100) % 5)
  # .even? instead of !== (0 || 2)
  # can't have LL
  x += 'L' unless ((num / 50) % 2).even?
  x += 'X' * ((num / 10) % 5)
  # can't have VV
  x += 'V' unless ((num / 5) % 2).even?
  x + 'I' * (num % 5)
end

input = ARGV[0].to_i

abort 'Usage: exercise4.rb [1-1000]' unless input.between?(1, 1000)
# input = gets.chomp.to_i
puts old_school_roman_numeral(input)
