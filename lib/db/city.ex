defmodule Db.City do
  use Ecto.Schema

  schema "counties" do
    has_many :local_weather, Db.Weather
    belongs_to :country, Db.Country
    field :name, :string
  end
end