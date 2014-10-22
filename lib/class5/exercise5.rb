#!/usr/bin/env ruby
#
# 5 points
#
# Replace the `database` and `load` methods with your solutions from exercise 4.
#
# Write a program that displays the single record that matches a user-given id
# number.
#
# For example:
#
#   $ ruby exercise5.rb 1
#   Found record #1 from /Users/tim/sea-c21-ruby/lib/class5/database.yml
#   Incentivized methodologies
#
# And if no records match the id number, it needs to display an error message:
#
#   $ ruby exercise5.rb 6
#   Could't find record #6 from /Users/tim/sea-c21-ruby/lib/class5/database.yml
#
# TIP #1: How do you access a single element of an array?
#
# TIP #2: The record with an id of 1 is the 0th element. The record with an id
# of 2 is the 1st element...

require 'yaml'

def database
  # pwd prints working directory

  # File.absolute_path(__FILE__)
  # alone will return ab path of exercise

  # File.dirname(File.absolute_path(__FILE__))
  # alone will return ab path of excercise directory
  # dirname returns components of long_path string except last one

  File.dirname(File.absolute_path(__FILE__)) + '/database.yml'
  # concatenating to access database.yml
  # now we know how to access it!
end

def load
  # database returns user's database.yml
  # File.read loads the text as a string

  # read_db = File.read(database)

  # read_array = YAML::load read_string <= RuboCop violation
  # read_array => useless assignment to variable
  # use YAML.load instead of YAML::load for method calls
  # File.read retrieves strings in YAML format
  # YAML.load converts YAML format back to original format

  # YAML.load(read_db)

  # make everything one single line
  YAML.load(File.read(database))
end

def find(id)
  # id - 1 since first element is 0th element
  load[id - 1]
end

input = ARGV[0].to_i

abort 'Usage: exercise5.rb POSITIVE_INTEGER' unless input > 0

record = find(input)

if record
  puts "Found record ##{input} from #{database}"
  puts record
else
  puts "Could't find record ##{input} from #{database}"
end
