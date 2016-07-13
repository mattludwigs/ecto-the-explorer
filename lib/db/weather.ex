defmodule Db.Weather do
  use Ecto.Schema
  import Ecto.Changeset

  schema "weather" do
    belongs_to :city, Db.City
    field :wdate, Ecto.Date
    field :temp_lo, :integer
    field :temp_hi, :integer
    field :prcp, :float, default: 0.0
    timestamps
  end

  def changeset(model, params \\ :emtpy) do
    model
    |> cast(params, ~w(wdate temp_lo temp_hi prcp)a)
    # |> validate_required(~w(wdate)a)
  end
end
