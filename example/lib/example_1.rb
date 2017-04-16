class A::Rectangle
  def initialize(width, height)
    @width = width
    @height = height
  end

  def area
    @width * @height
  end
end

class B::Circle
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

class B::Printer
  def self.print(shape)
    puts "Area: #{shape.area}"
    puts "Perimeter: #{shape.perimeter}"
  end
end
