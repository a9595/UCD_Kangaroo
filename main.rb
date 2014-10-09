require_relative 'point'
require_relative 'die'
require_relative 'kangaroo'
require_relative 'grid'
class Main
  #init
  grid = Grid.new
  kangaroo = Kangaroo.new grid


  loop do
    #grid
    print 'Enter dimension of the Grid (>=1):'
    grid.dimension = gets.chomp.to_i

    if !(grid.dimensions.is_a? && grid.dimensions >=0) #bad
      puts 'put a positive number'
      next
    else
      return
    end
  end


#let's play bro:
  kangaroo.hop!


end

