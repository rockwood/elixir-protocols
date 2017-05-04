class Rectangle
  def initialize(width, height)
    @width = width
    @height = height
  end

  def area
    @width * @height
  end
end

class Circle
  def initialize(radius)
    @radius = radius
  end

  def area
    Math::PI * @radius ** 2
  end

  def perimeter
    2 * Math::PI * @radius
  end
end

class Printer
  def self.print(shape)
    puts "Area: #{shape.area}"
    puts "Perimeter: #{shape.perimeter}"
  end
end
