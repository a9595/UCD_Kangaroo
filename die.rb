class Die
  attr_accessor :current_side

  def initialize
    @current_side
  end

  def throw
    number = Random.rand(1..4)
    case number
      when 1
        @current_side = :north
      when 2
        @current_side = :east
      when 3
        @current_side = :south
      when 4
        @current_side = :west
    end


  end
end