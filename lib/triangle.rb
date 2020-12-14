class Triangle
  attr_reader :a, :b, :c

  def initialize (a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def valid?
    if a <= 0 || b <= 0 || c <= 0 || a + b <= c || b + c <= a || a + c <= b
      false
    else
      true
    end
  end

  def kind
   if valid?
      if a == b && b == c
        return :equilateral
      elsif a == b || a == c || b == c
        return :isosceles
      else
        return :scalene
      end
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
    def message
      "Your arguments do not form a valid triangle"
    end
  end

end
