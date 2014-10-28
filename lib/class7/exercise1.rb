#!/usr/bin/env ruby
#
# 5 points
#
# The following five methods must be fixed:
#
#   Integer#hours_in_seconds #=> Integer
#
#     Returns the number of hours converted to seconds.
#
#     10.hours_in_seconds  #=> 36_000
#
#   String#indent(amount = 2) #=> String
#
#     Returns `amount` spaces plus the String. The default `amount` is 2.
#
#     'foo'.indent     #=> '  foo'
#     'foo'.indent(3)  #=> '   foo'
#
#   Integer#to_roman => String
#
#     Returns the roman numeral equavilent of the arabic number.
#
#     1999.to_roman  #=> 'MCMXCIX'
#
#   Array#second #=> Object
#
#     Returns the second element of the Array.
#
#     [10, 20, 30].second  #=> 20
#
#   Array#third #=> Object
#
#     Returns the third element of the Array.
#
#     [10, 20, 30].third  #=> 30
#
# HINT: Remember to use `self` to access the receiver object of the method
#
#     class Integer
#       def plus_forty_two
#         self + 42
#       end
#     end
#
#     1.plus_forty_two  #=> 43

# have to rely on rspec to see if code works :/

# All class names must start with capital letter
# File.read - File is a class
# RSpec is also a class!
class Integer
  # for class Integer, we are defining a method that works on integers
  # so we can call 24.hours_in_seconds (24 being the integer of course)
  def hours_in_seconds
    # special variable called self that exists in Ruby
    # value of self is not in your control so you can't say self = 5
    # so if we call this method on 24, then self is 24
    # self is always left of the period
    self * 60 * 60
    # convert self(hours) to minutes, then to seconds
  end
end

class String
  # amount = 2 is the default parameter if parameter is not defined
  def indent(amount = 2)
    # "#{amount * " "}#{self}"
    ' ' * amount + self
  end
end

class Integer
  def to_roman
    num = self
    arab_to_romans = [
      [1000, 'M'],
      [900, 'CM'],
      [500,  'D'],
      [400, 'CD'],
      [100,  'C'],
      [90,  'XC'],
      [50,   'L'],
      [40,  'XL'],
      [10,   'X'],
      [9,   'IX'],
      [5,    'V'],
      [4,   'IV'],
      [1,    'I']
    ]
    answer = []
    arab_to_romans.each do |arab_to_roman|
      arabic, roman = arab_to_roman
      quotient = num / arabic
      next if quotient == 0
      answer.push(roman * quotient)
      num %= arabic
    end
    answer.join
  end
end

class Array
  def second
    self[1]
  end

  def third
    self[2]
  end
end
