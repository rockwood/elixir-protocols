defmodule Rectangle do
  defstruct length: 0, width: 0

  def area(%{length: length, width: width}), do: length * width
end

defmodule Circle do
  defstruct radius: 0

  def area(%{radius: radius}), do: :math.pi * :math.pow(radius, 2)
end

defmodule Printer do
  def print_area(%Circle{} = circle), do: IO.puts "The area is: #{Circle.area(circle)}"
  def print_area(%Rectangle{} = rectangle), do: IO.puts "The area is: #{Rectangle.area(rectangle)}"
end
