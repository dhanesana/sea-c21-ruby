#!/usr/bin/env ruby
#
# 5 points
#
# Replace the `records` and `database` methods with your solutions from
# exercises 1 and 2.
#
# Then write a program that saves the corporate buzzwords -- in YAML format --
# to anyone's `lib/class5/database.yml` file and displays the result.
#
# So if Tim runs this program successfully:
#
#   $ ruby exercise3.rb
#   Saved 5 records to /Users/tim/sea-c21-ruby/lib/class5/database.yml
#
# Then his database needs to contain the following YAML content:
#
#   $ cat database.yml
#    ---
#    - Incentivized methodologies
#    - Seemless innovation
#    - Corporate synergy
#    - Scalable globalization
#    - Monetized assets
#
# TIP: Read section 11.4 carefully.

require 'yaml'

def records
  ['Incentivized methodologies',
   'Seemless innovation',
   'Corporate synergy',
   'Scalable globalization',
   'Monetized assets'
  ]
end

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

def save
  # YAML description of records array
  records_yaml = records.to_yaml
  # database returns user's database.yml
  # opens file, and writes records_yaml to database.yml
  # File.open is how to open a file
  # and f is object file it creates
  File.open(database, 'w') do |f|
    f.write(records_yaml)
  end
end

save

puts "Saved #{records.size} records to #{database}"
