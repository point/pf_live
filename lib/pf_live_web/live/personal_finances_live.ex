defmodule PfLiveWeb.PersonalFinancesLive do
  use PfLiveWeb, :live_view
  alias PfLive.Finances
  alias PfLive.Finances.Entry

  def mount(_params, _, socket) do
    entries = Finances.list_entries()

    {:ok,
     socket
     |> push_event("chart_data", compute_chart_data())
     |> assign(%{
       entries: entries,
       changeset: Entry.changeset(%Entry{}, %{})
     })
     |> assign_chart_data()}
  end

  def handle_event("save", %{"entry" => entry_params}, socket) do
    case Finances.create_entry(entry_params) do
      {:ok, _new_entry} ->
        {:noreply,
         socket
         |> assign(changeset: Entry.changeset(%Entry{}, %{}), entries: Finances.list_entries())
         |> push_event("chart_data", compute_chart_data())
         |> put_flash(:info, "Entry created")}

      {:error, %Ecto.Changeset{} = changeset} ->
        {:noreply, assign(socket, changeset: changeset)}
    end
  end

  defp compute_chart_data() do
    expenses_by_month = Finances.expenses_by_month()
    by_month_data = Enum.map(expenses_by_month, fn e -> Float.round(e[:sum], 2) end)
    by_month_labels = Enum.map(expenses_by_month, fn e -> Calendar.strftime(e[:date], "%b") end)

    expenses_this_month = Finances.expenses_this_month()
    this_month_data = Enum.map(expenses_this_month, fn e -> Float.round(e.amount, 2) end)
    this_month_labels = Enum.map(expenses_this_month, fn e -> e.description end)

    %{
      by_month_data: by_month_data,
      by_month_labels: by_month_labels,
      this_month_data: this_month_data,
      this_month_labels: this_month_labels
    }
  end

  defp assign_chart_data(socket) do
    %{
      by_month_data: by_month_data,
      by_month_labels: by_month_labels,
      this_month_data: this_month_data,
      this_month_labels: this_month_labels
    } = compute_chart_data()

    assign(socket,
      by_month_data: Jason.encode!(by_month_data),
      by_month_labels: Jason.encode!(by_month_labels),
      this_month_data: Jason.encode!(this_month_data),
      this_month_labels: Jason.encode!(this_month_labels)
    )
  end
end
