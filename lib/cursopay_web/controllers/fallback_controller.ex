defmodule CursopayWeb.FallbackController do
  use CursopayWeb, :controller

  def call(conn, {:error, result}) do
    conn
    |> put_status(:bad_request)
    |> put_view(CursopayWeb.ErrorView)
    |> render("400.json", result: result)
  end
end
