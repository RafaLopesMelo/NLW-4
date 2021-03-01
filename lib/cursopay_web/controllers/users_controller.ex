defmodule CursopayWeb.UsersController do
  use CursopayWeb, :controller

  alias Cursopay.User

  action_fallback CursopayWeb.FallbackController

  def create(conn, params) do
    with {:ok, %User{} = user} <- Cursopay.create_user(params) do
      conn
      |> put_status(:created)
      |> render("create.json", user: user)
    end
  end

end
