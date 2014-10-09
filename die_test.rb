require 'test/unit'
require_relative 'die'

class DieTest < Test::Unit::TestCase
  def test_throw
    die = Die.new
    die.throw
    sides = [:north, :east, :south, :west]
    sides.each
    #assert_equal(:north || :east || :south || :west, die.current_side, 'Throw mistake ')
    assert(sides.include?(die.current_side), 'throw mistake')

  end

end