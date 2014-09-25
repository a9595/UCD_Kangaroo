require_relative 'point'
require_relative 'die'
class Kangaroo
  attr_accessor :location, :die

  def initialize grid
    @die = Die.new
    @location = Point.new
    @grid = grid
  end

  def hop!
    #the same as move! in Point class ?
    begin

      tmp_point = Point.new

      @location.print
      tmp_point.x = @location.x
      tmp_point.y = @location.y

      tmp_point.move! @die.throw
      if @grid.lies_outside? tmp_point
        puts "Oops, hit the boundary: #{tmp_point.x}, #{tmp_point.y})"
      else
        @location.move! @die.current_side
      end
    end while !at_home? @grid.dimensions

    @location.print
    puts "\n\n KANGAROO IS AT HOME"
  end

  def at_home?(dimension)
    if @location.x == dimension && @location.y == dimension
      true
    else
      false
    end
  end

end