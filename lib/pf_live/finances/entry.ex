defmodule PfLive.Finances.Entry do
  use Ecto.Schema
  import Ecto.Changeset

  schema "entries" do
    field :amount, :float
    field :date, :date
    field :description, :string

    timestamps()
  end

  @doc false
  def changeset(entry, attrs) do
    entry
    |> cast(attrs, [:date, :amount, :description])
    |> validate_required([:date, :amount, :description])
  end
end
