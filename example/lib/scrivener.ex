defprotocol Scrivener.Paginater do
  def paginate(pageable, config)
end

defimpl Scrivener.Paginater, for: Ecto.Query do
  import Ecto.Query

  def paginate(query, %{page_size: page_size, page_number: page_number, module: repo}) do
    query = from q in query,
      limit: page_size,
      offset: page_number * page_size

    %Page{
      page_size: page_size,
      entries: repo.all(query)
    }
  end
end

defimpl Scrivener.Paginater, for: MyThing do
  def paginate(my_thing, %{page_size: page_size, page_number: page_number}) do
    # ...
  end
end
