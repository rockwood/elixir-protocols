defprotocol A.Area do
  def calc(shape)
end

defmodule A.Rectangle do
  defstruct length: 0, width: 0

  defimpl A.Area do
    def calc(%{length: length, width: width}) do
      length * width
    end
  end
end

defprotocol B.Perimeter do
  def calc(shape)
end

defmodule B.Printer do
  def print(shape) do
    IO.puts A.Area.calc(shape)
    IO.puts B.Perimeter.calc(shape)
  end
end

defmodule C.Circle do
  defstruct radius: 0

  defimpl A.Area do
    def calc(%{radius: radius}) do
      :math.pi() * :math.pow(radius, 2)
    end
  end

  defimpl B.Perimeter do
    def calc(%{radius: radius}) do
      2 * :math.pi() * radius
    end
  end
end

defimpl B.Perimeter, for: A.Rectangle do
  def calc(%{length: length, width: width}) do
    2 * length + 2 * width
  end
end
