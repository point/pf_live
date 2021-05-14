defmodule PfLive.FinancesTest do
  use PfLive.DataCase

  alias PfLive.Finances

  describe "entries" do
    alias PfLive.Finances.Entry

    @valid_attrs %{amount: 42, date: ~N[2010-04-17 14:00:00], description: "some description"}
    @update_attrs %{
      amount: 43,
      date: ~N[2011-05-18 15:01:01],
      description: "some updated description"
    }
    @invalid_attrs %{amount: nil, date: nil, description: nil}

    def entry_fixture(attrs \\ %{}) do
      {:ok, entry} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Finances.create_entry()

      entry
    end

    test "list_entries/0 returns all entries" do
      entry = entry_fixture()
      assert Finances.list_entries() == [entry]
    end

    test "get_entry!/1 returns the entry with given id" do
      entry = entry_fixture()
      assert Finances.get_entry!(entry.id) == entry
    end

    test "create_entry/1 with valid data creates a entry" do
      assert {:ok, %Entry{} = entry} = Finances.create_entry(@valid_attrs)
      assert entry.amount == 42
      assert entry.date == ~N[2010-04-17 14:00:00]
      assert entry.description == "some description"
    end

    test "create_entry/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Finances.create_entry(@invalid_attrs)
    end

    test "update_entry/2 with valid data updates the entry" do
      entry = entry_fixture()
      assert {:ok, %Entry{} = entry} = Finances.update_entry(entry, @update_attrs)
      assert entry.amount == 43
      assert entry.date == ~N[2011-05-18 15:01:01]
      assert entry.description == "some updated description"
    end

    test "update_entry/2 with invalid data returns error changeset" do
      entry = entry_fixture()
      assert {:error, %Ecto.Changeset{}} = Finances.update_entry(entry, @invalid_attrs)
      assert entry == Finances.get_entry!(entry.id)
    end

    test "delete_entry/1 deletes the entry" do
      entry = entry_fixture()
      assert {:ok, %Entry{}} = Finances.delete_entry(entry)
      assert_raise Ecto.NoResultsError, fn -> Finances.get_entry!(entry.id) end
    end

    test "change_entry/1 returns a entry changeset" do
      entry = entry_fixture()
      assert %Ecto.Changeset{} = Finances.change_entry(entry)
    end
  end
end
