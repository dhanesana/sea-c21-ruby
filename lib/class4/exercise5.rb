#!/usr/bin/env ruby
#
# 5 points
#
# Eventually, someone thought it would be terribly clever if putting a smaller
# number before a larger one meant you had to subtract the smaller one. As a
# result of this development, you must now suffer.
#
# Rewrite your previous program so that, when passed any integer between 1 and
# 1000, it returns a string containing the proper modern Roman numeral. In other
# words:
#
#   $ ruby exercise5.rb 9
#   IX
#
# TIP #1: Here's a mapping of Roman to Arabic numerals:
#
#   1000 = M
#    900 = CM
#    500 = D
#    400 = CD
#    100 = C
#     90 = XC
#     50 = L
#     40 = XL
#     10 = X
#      9 = IX
#      5 = V
#      4 = IV
#      1 = I
#
# TIP #3: You only need to change the `modern_roman_numeral` method.

# rubocop:disable MethodLength

=begin
# old method
def modern_roman_numeral(num)
  rom = %w(M CM D CD C XC L XL X IX V IV I)
  val = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
  x = ''
  i = 0
  # 12 because 13 items in array
  while i <= 12
    while num >= val[i]
      num -= val[i]
      x += rom[i]
    end
    # break loop
    i += 1
  end
  x
end
=end

def modern_roman_numeral(num)
  rom = %w(M CM D CD C XC L XL X IX V IV I)
  val = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
  x = ''

  # 13 items in array
  13.times do |i|
    # if num = 15
    while num >= val[i]
      # 15 - 10 X = 5
      # 5 - 5 V = 0
      # x = XV
      num -= val[i]
      x += rom[i]
    end
  end
  x
end

input = ARGV[0].to_i

abort 'Usage: exercise5.rb [1-1000]' unless input.between?(1, 1000)
# input = gets.chomp.to_i
puts modern_roman_numeral(input)
