defmodule TodoxWeb.PageController do
  use TodoxWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
