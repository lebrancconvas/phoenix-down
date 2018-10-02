defmodule PhoenixdownWeb.PageController do
  use PhoenixdownWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
