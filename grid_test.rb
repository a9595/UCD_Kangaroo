require 'test/unit'
require_relative 'grid'
require_relative 'point'

class GridTest < Test::Unit::TestCase

  def test_initialize
    grid = Grid.new
    assert_equal(0, grid.dimensions)

  end

  def test_lies_outside?
    grid = Grid.new
    point = Point.new

    assert((!grid.lies_outside? point), 'lies outside mistake')

    point.x = 99 #totally outside :)
    point.y = 99
    assert((grid.lies_outside? point), 'lies outside mistake')
  end

end