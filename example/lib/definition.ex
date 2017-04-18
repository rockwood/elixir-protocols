defprotocol Blankable do
  def blank?(term)
end

defimpl Blankable, for: BitString do
  def blank?(""), do: true
  def blank?(_), do: false
end

defimpl Blankable, for: Map do
  def blank?(map), do: map_size(map) == 0
end

defmodule Post do
  defstruct [:title, :body]

  defimpl Blankable do
    def blank?(%{body: nil}), do: true
    def blank?(%{body: _}), do: false
  end
end

> Blankable.blank?("foo")
true

> Blankable.blank?(%{body: nil})
false

> Blankable.blank?(%Post{body: nil})
true

> Blankable.blank?(:foo)
** (Protocol.UndefinedError) protocol Blankable not implemented for :foo
