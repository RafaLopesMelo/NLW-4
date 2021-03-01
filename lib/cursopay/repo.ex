defmodule Cursopay.Repo do
  use Ecto.Repo,
    otp_app: :cursopay,
    adapter: Ecto.Adapters.Postgres
end
