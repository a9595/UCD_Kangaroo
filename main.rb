require_relative 'point'
require_relative 'die'
require_relative 'kangaroo'
require_relative 'grid'
class Main
  #init
  grid = Grid.new
  kangaroo = Kangaroo.new grid

  #grid
  print 'Enter dimension of the Grid (>=1):'
  grid.dimension = gets.chomp.to_i

  #let's play bro:
  kangaroo.hop!

end


