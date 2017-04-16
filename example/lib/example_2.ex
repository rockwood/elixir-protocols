defmodule A.Rectangle do
  defstruct length: 0, width: 0

  def area(%{length: length, width: width}) do
    length * width
  end
end

defmodule B.Printer do
  def print(%A.Rectangle{} = shape) do
    IO.puts A.Rectangle.area(shape)
  end

  def print(shape) do
    IO.puts perimeter(shape)
  end

  def perimeter(%A.Rectangle{length: length, width: width}) do
    2 * length + 2 * width
  end

  def perimeter(%C.Circle{radius: radius}) do
    2 * :math.pi() * radius
  end
end

defmodule C.Circle do
  defstruct radius: 0

  def area(%{radius: radius}) do
    :math.pi() * :math.pow(radius, 2)
  end
end
