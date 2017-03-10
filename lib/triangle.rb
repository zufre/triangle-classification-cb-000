class Triangle
  attr_accessor :sides
  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3]
  end
  def kind
    if (@sides[0]== nil || @sides[1] == nil || @sides[2] == nil ) ||  (@sides[0] <= 0|| @sides[1] <= 0 || @sides[2] <= 0) || (@sides[0] + @sides[1] <= @sides[2] || @sides[1] + @sides[2] <= @sides[0] || @sides[0] + @sides[2] <=  @sides[1])
      raise TriangleError
    elsif @sides[0] == @sides[1] && @sides[1] == @sides[2]
      :equilateral
    elsif @sides[0] == @sides[1] || @sides[0] == @sides[2] || @sides[1] == @sides[2]
      :isosceles
    else
      :scalene
    end
  end


end
class TriangleError < StandardError

end
