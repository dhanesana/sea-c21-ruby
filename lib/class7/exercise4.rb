#!/usr/bin/env ruby
#
# 5 points
#
# Copy the previous OrangeTree class and replace the following method:
#
#   OrangeTree#initialize(fruit = 50)
#
#     Sets it's `@fruit` instance variable to the `fruit` parameter, which
#     defaults to 50.
#
#     orange_tree = OrangeTree.new
#     orange_tree.fruit  #=> 50
#
#     orange_tree = OrangeTree.new(20)
#     orange_tree.fruit  #=> 20
#
# And extend the OrangeTree class with the following method:
#
#   OrangeTree#==(other) #=> true or false
#
#     Given another object, returns `true` if both objects have the same amount
#     of `fruit`. Otherwise, returns `false`.
#
#     OrangeTree.new(20) == OrangeTree.new(20)
#     OrangeTree.new(20) != OrangeTree.new(10)

class OrangeTree
  # initialize runs the moment a new OrangeTree is made
  # and sets @fruit to 50
  # initialize takes a parameter = fruit
  # which defaults at 50 if not parameter is specified
  def initialize(fruit = 50)
    @fruit = fruit
  end

  # fruit method can return @fruit, but rubocop will require attr_reader
  # def fruit
  #   iono = @fruit
  #   iono
  # end

  # attr_reader = def fruit
  #                 @fruit
  #               end
  attr_reader :fruit

  # default amount = 1 if no parameter specified
  def pick!(amount = 1)
    @fruit -= amount unless @fruit < amount
  end
  # define == method
  def ==(other)
    @fruit == other.fruit
  end
end
