# 5 points
#
# Write a program that displays the following table of contents:
#
#   $ ruby exercise7.rb
#                   Table of Contents
#   Chapter 1:  Getting Started                page  1
#   Chapter 2:  Numbers                        page  9
#   Chapter 3:  Letters                        page 13
#
# TIP #1: The width of each line is 50 characters.
#
# TIP #2: You'll need the following methods:
#
#   string.center(Integer)  #=> String
#
#     Returns a new String of length Integer with `string` centered.
#
#     'bird'.center(10)  #=> '   bird   '
#
#   string.ljust(Integer)  #=> String
#
#     Returns a new String of length Integer with `string` left justified.
#
#     'bird'.ljust(10)  #=> 'bird      '
#
#   string.rjust(Integer)  #=> String
#
#     Returns a new String of length Integer with `string` right justified.
#
#     'bird'.rjust(10)  #=> '      bird'

lw = 50
# puts '.'.rjust(lw)
# . marks the rightmost border
puts 'Table of Contents'.center(lw)
puts 'Chapter 1:  Getting Started'.ljust(lw / 2) + 'page  1'.rjust(23)
# not sure why 'page 1'.rjust has to be adjusted to 23...
puts 'Chapter 2:  Numbers'.ljust(lw / 2) + 'page  9'.rjust(lw / 2)
puts 'Chapter 3:  Letters'.ljust(lw / 2) + 'page 13'.rjust(lw / 2)
