defmodule SoapApi do
  def send_message(message) do
    request = SoapMessage.build_request(message)
    response = Http.post(request)
    SoapMessage.parse_response(message, response)
  end
end

defprotocol SoapMessage do
  def build_request(soap_message)
  def parse_response(soap_message, response)
end

defmodule FetchUserMessage do
  defstruct role: ""

  defimpl SoapMessage do
    def build_request(%{role: role}) do: # build xml

    def parse_response(%{role: role}, response), do: # parse xml
  end
end

> %FetchUserMessage{role: "admin"} |> SoapApi.send_message()
