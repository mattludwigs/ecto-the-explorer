defmodule Db.Country do
  use Ecto.Schema

  schema "countries" do
    has_many :cities, City
    has_many :weather, through: [:cities, :local_weather]
    field :name, :string
  end
end


