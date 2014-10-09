require 'test/unit'
require_relative 'point'
require_relative 'grid'

class PointTest < Test::Unit::TestCase
  def setup
    point = Point.new
    assert(point.x == 0, 'mistake with X ')
    assert(point.y == 0, 'mistake with Y')
  end

  def test_move!
    point = Point.new
    point.move! :north #(0,1)
    assert_equal(1, point.y)
    point.move! :south #(0,0)
    assert_equal(0, point.y)
    point.move! :west #(-1,0)
    assert_equal(-1, point.x)
    point.move! :east #(0,0)
    assert_equal(0, point.x)
  end

end