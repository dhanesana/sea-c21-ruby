#!/usr/bin/env ruby
#
# 5 points
#
# Replace the `database` methods with your solution from exercise 2.
#
# Then write a program that loads the corporate buzzwords -- in YAML format --
# from anyone's `lib/class5/database.yml` file and displays the result.
#
# Here's how it needs to work if Tim runs this program successfully:
#
#   $ ruby exercise4.rb
#   Loaded 5 records from /Users/tim/sea-c21-ruby/lib/class5/database.yml
#   Incentivized methodologies
#   Seemless innovation
#   Corporate synergy
#   Scalable globalization
#   Monetized assets
#
# TIP: Read section 11.4 carefully.

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

  # YAML.load(read_db)

  # make everything one single line
  YAML.load(File.read(database))
end

records = load

puts "Loaded #{records.size} records from #{database}"
puts records
