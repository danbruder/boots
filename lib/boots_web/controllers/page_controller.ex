defmodule BootsWeb.PageController do
  use BootsWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
