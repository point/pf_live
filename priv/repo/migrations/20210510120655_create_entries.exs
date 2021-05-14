defmodule PfLive.Repo.Migrations.CreateEntries do
  use Ecto.Migration

  def change do
    create table(:entries) do
      add :date, :date
      add :amount, :float
      add :description, :string

      timestamps()
    end
  end
end
