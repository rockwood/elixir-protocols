Poison.encode(%{my_int: 1, my_atom: :two})
{:ok, "{\"my_int\":1,\"my_atom\":\"two\"}"}

defprotocol Poison.Encoder do
  @fallback_to_any true

  def encode(value, options)
end

defimpl Poison.Encoder, for: Integer do
  def encode(integer, _options) do
    Integer.to_string(integer)
  end
end

defimpl Poison.Encoder, for: Person do
  def encode(%{name: name, age: age}, options) do
    Poison.Encoder.BitString.encode("#{name} (#{age})", options)
  end
end
