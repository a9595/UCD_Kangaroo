require 'test/unit'
require_relative 'grid'
require_relative 'point'

class GridTest < Test::Unit::TestCase

  def test_initialize
    grid = Grid.new
    assert_equal(0, grid.dimensions)

  end

  def test_lies_outside?
    grid = Grid.new #dimension to 0,0 in initializer
    point = Point.new #0,0 by default in initializer

    assert((!grid.lies_outside? point), 'lies outside mistake')

    point.x = 1  #set outside
    point.y = 1
    assert((grid.lies_outside? point), 'lies outside mistake')
  end

end