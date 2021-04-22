defmodule Nlw.Repo do
  use Ecto.Repo,
    otp_app: :nlw,
    adapter: Ecto.Adapters.Postgres
end
