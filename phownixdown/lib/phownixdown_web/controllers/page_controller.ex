defmodule PhownixdownWeb.PageController do
  use PhownixdownWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
