defmodule PfLive.Repo do
  use Ecto.Repo,
    otp_app: :pf_live,
    adapter: Ecto.Adapters.SQLite3
end
