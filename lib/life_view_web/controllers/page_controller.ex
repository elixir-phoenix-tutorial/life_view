defmodule LifeViewWeb.PageController do
  use LifeViewWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
