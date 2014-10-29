#!/usr/bin/env ruby
#
# 5 points
#
# Make an OrangeTree class with the following methods:
#
#   OrangeTree#initialize
#
#     Sets it's @fruit instance variable to 50.
#
#   OrangeTree#fruit #=> Integer
#
#     Returns the value of the @fruit instance variable
#
#     orange_tree = OrangeTree.new
#     orange_tree.fruit  #=> 50

class OrangeTree
  # initialize runs the moment a new OrangeTree is made
  # and sets @fruit to 50
  def initialize
    @fruit = 50
  end
  # fruit method can return @fruit, but rubocop will require attr_reader
  def fruit
    iono = @fruit
    iono
  end
end
