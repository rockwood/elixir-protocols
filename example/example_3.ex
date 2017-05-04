defprotocol Area do
  def calc(shape)
end

defmodule Rectangle do
  defstruct length: 0, width: 0

  defimpl Area do
    def calc(%{length: length, width: width}) do
      length * width
    end
  end
end

defprotocol Perimeter do
  def calc(shape)
end

defmodule Printer do
  def print(shape) do
    IO.puts Area.calc(shape)
    IO.puts Perimeter.calc(shape)
  end
end

defmodule Circle do
  defstruct radius: 0

  defimpl Area do
    def calc(%{radius: radius}) do
      :math.pi() * :math.pow(radius, 2)
    end
  end

  defimpl Perimeter do
    def calc(%{radius: radius}) do
      2 * :math.pi() * radius
    end
  end
end

defimpl Perimeter, for: Rectangle do
  def calc(%{length: length, width: width}) do
    2 * length + 2 * width
  end
end
