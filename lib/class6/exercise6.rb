#!/usr/bin/env ruby
#
# 5 points
#
# Replace the `database` and `load` methods with your solutions from exercise 5.
#
# Write a program that, when given both a key and a value, updates the database
# by adding a new key-value pair:
#
#   $ ruby exercise6.rb friend 'Paul McCartney'
#   Updated 1 key-value pair in /Users/tim/sea-c21-ruby/lib/class6/database.yml
#   :friend => "Paul McCartney"
#
# Or modifying an existing key-value pair:
#
#   $ ruby exercise6.rb name 'John Lennon'
#   Updated 1 key-value pair in /Users/tim/sea-c21-ruby/lib/class6/database.yml
#   :name => "John Lennon"
#
# TIP: How do you merge two Hashes together?

require 'yaml'

def database
  # File.dirname(File.absolute_path(__FILE__)) + '/database.yml'
  File.absolute_path('../database.yml', __FILE__)
end

def load
  # same from class5 ex4
  YAML.load(File.read(database))
end

def update(key, value)
  # adding key-value pair to load
  load[key.to_sym] = value.to_sym
end

input1, input2 = ARGV

abort 'Usage: exercise5.rb KEY VALUE' unless input1 && input2

update(input1, input2)

puts "Updated 1 key-value pair in #{database}"
puts ":#{input1} => #{input2.inspect}"
