defmodule Todox.Repo do
  use Ecto.Repo,
    otp_app: :todox,
    adapter: Ecto.Adapters.SQLite3
end
