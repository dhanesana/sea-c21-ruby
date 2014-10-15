# 5 points
#
# What if Nana doesn't want you to leave? Copy your solution to exercise2 and
# paste it here. Modify the program so that you have to type 'BYE' three times
# **in a row** to stop the conversation.
#
#   $ ruby exercise3.rb
#   Nana: HI SWEETIE! GIVE NANA A KISS!
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: BYE SWEETIE!
#
# If you shout 'BYE' three times, but not in a row, you should still be talking
# to Nana.
#
#   $ ruby exercise3.rb
#   Nana: HI SWEETIE! GIVE NANA A KISS!
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   bye
#   Nana: HUH?! SPEAK UP, SWEETIE!
#   I HAVE TO GO NOW
#   Nana: NOT SINCE 1936!
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: BYE SWEETIE!

i = 0
puts 'Nana: HI SWEETIE! GIVE NANA A KISS!'

while i != 3
  response = gets.chomp
  if response != response.upcase
    puts 'Nana: HUH?! SPEAK UP, SWEETIE!'
    i = 0
  elsif response == response.upcase && response != 'BYE'
    year = rand(1930..1950)
    puts "Nana: NOT SINCE #{year}!"
    i = 0
  else
    # break if i == 2 and not i == 3 to avoid +Nana: HOW'S SCHOOL GOING?
    break if i == 2
    puts "Nana: HOW'S SCHOOL GOING?"
    i += 1
  end
end

puts 'Nana: BYE SWEETIE!'
