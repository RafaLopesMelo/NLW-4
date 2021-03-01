defmodule CursopayWeb.AccountsController do
  use CursopayWeb, :controller

  alias Cursopay.Account
  alias Cursopay.Accounts.Transactions.Response, as: TransactionResponse

  action_fallback CursopayWeb.FallbackController

  def deposit(conn, params) do
    with {:ok, %Account{} = account} <- Cursopay.deposit(params) do
      conn
      |> put_status(:ok)
      |> render("update.json", account: account)
    end
  end

  def withdraw(conn, params) do
    with {:ok, %Account{} = account} <- Cursopay.withdraw(params) do
      conn
      |> put_status(:ok)
      |> render("update.json", account: account)
    end
  end

  def transaction(conn, params) do
    with {:ok, %TransactionResponse{} = transaction} <- Cursopay.transaction(params) do
      conn
      |> put_status(:ok)
      |> render("transact.json", transaction: transaction)
    end
  end
end
