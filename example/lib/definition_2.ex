defimpl Blankable, for: Any do
  def blank?(_), do: false
end

defmodule Post do
  @derive [Blankable]
  defstruct [:title, :body]
end

> Blankable.blank?(%Post{})
false

defprotocol Blankable do
  @fallback_to_any true
  def blank?(term)
end

> Blankable.blank?(:foo)
false
