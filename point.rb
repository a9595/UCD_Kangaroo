require_relative 'grid'
class Point


  attr_accessor :y, :x

  def initialize
    @x = 0
    @y = 0
  end

  def move!(direction)
    case direction
      when :north
        @y += 1
      when :east
        @x += 1
      when :south
        @y -= 1
      when :west
        @x -= 1
      else

    end


  end

  def ==(other)
    (@x == other.x && @y == other.y) ? true : false
  end

  def print
    puts "Hopped to: (#{@x}, #{@y})"
  end

end