require 'test/unit'
require_relative 'kangaroo'

class KangarooTest < Test::Unit::TestCase

  def test_initialize
    kangaroo = Kangaroo.new Grid.new
    assert_not_nil(kangaroo.die)
    assert_not_nil(kangaroo.location)
    assert_not_nil(kangaroo.grid)

  end

  def test_hop!
    kangaroo = Kangaroo.new Grid.new

    assert_nothing_raised(kangaroo.hop!)
  end

  def test_at_home?
    kangaroo = Kangaroo.new Grid.new
    assert((kangaroo.at_home? 0), 'at_home? mistake')
  end
end