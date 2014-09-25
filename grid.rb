class Grid

  attr_accessor :dimensions

  def initialize(dimensions)
    @dimensions = dimensions
  end

  def initialize
    @dimensions = 0
  end

  def dimension=(new_dimension)
    @dimensions = new_dimension
  end

  def lies_outside?(point)
    if point.x >@dimensions || point.x <0 ||
        point.y >@dimensions || point.y<0
      true
    else
      false
    end
  end

end