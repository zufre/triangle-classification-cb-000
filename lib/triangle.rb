class Triangle
  attr_accessor :sides

  def initialize(side_a, side_b, side_c)
    @sides = [side_a, side_b, side_c]
  end

  def is_triangle?
    if (@sides[0] + @sides[1] <= @sides[2] || @sides[1] + @sides[2] <= @sides[0] || @sides[0] + @sides[2] <= @sides[1])
      false
    elsif @sides.any? { |side| side == nil || side <= 0}
      false
    else
      true
    end
  end

  def kind
    if !is_triangle?
      raise TriangleError
    elsif sides.uniq.count == 1
      :equilateral
    elsif sides.uniq.count == 2
      :isosceles
    else
      :scalene
    end
  end
end

  class TriangleError < StandardError
    # triangle error code
  end
