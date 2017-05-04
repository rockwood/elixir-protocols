defmodule Rectangle do
  defstruct length: 0, width: 0

  def area(%{length: length, width: width}) do
    length * width
  end
end

defmodule Printer do
  def print(%Rectangle{} = shape) do
    IO.puts Rectangle.area(shape)
  end

  def print(shape) do
    IO.puts perimeter(shape)
  end

  def perimeter(%Rectangle{length: length, width: width}) do
    2 * length + 2 * width
  end

  def perimeter(%Circle{radius: radius}) do
    2 * :math.pi() * radius
  end
end

defmodule Circle do
  defstruct radius: 0

  def area(%{radius: radius}) do
    :math.pi() * :math.pow(radius, 2)
  end
end
