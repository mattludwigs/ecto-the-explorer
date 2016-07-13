defmodule Db.Query do
  import Ecto.Query

  def countries_with_weather_query do
    query = from c in Db.Country,
            preload: :weather

    Db.Repo.all(query)
  end

end