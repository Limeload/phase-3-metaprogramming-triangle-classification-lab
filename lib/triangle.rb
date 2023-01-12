# require 'pry'
class Triangle < StandardError
  
  attr_reader :a, :b , :c

  def initialize(a, b, c)
   @a = a
   @b = b
   @c = c
  end

  def kind 
   triangle_error_message
   if self.a == self.b && self.b == self.c
    :equilateral
   elsif self.a == self.b || self.b == self.c || self.c == self.a
    :isosceles
   else
    :scalene
  end
end

def triangle_error_message
  raise TriangleError unless [self.a, self.b, self.c].all?(&:positive?) && 
  self.a + self.b > self.c && self.a + self.c > self.b && self.b + self.c > self.a
end

class TriangleError < StandardError
  # triangle error code
end

end
