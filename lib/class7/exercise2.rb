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
  def initialize
    fruit
  end
  # fruit sets @fruit to 50
  def fruit
    @fruit = 50
  end
end
