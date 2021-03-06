# 5 points
#
# Write a program that displays all the leap years between 1900 and 2000.
#
# Leap years are years divisible by 4 (e.g. 1984).
#
# Years divisible by 100 are not leap years (e.g. 1900) unless they are also
# divisible by 400 (e.g. 2000).
#
# TIP: I expect you to use a loop and a few modulo operations.

# i suk at math tho
# year = 1901 so 1900 isn't included
year = 1901

# year != 2001 so 2000 is included
while year != 2001
  puts year if year % 4 == 0 || year % 400 == 0
  year += 1
end
