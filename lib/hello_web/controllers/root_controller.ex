defmodule HelloWeb.RootController do
  use HelloWeb, :controller

  def index(conn, _) do
    redirect(conn, to: Routes.cms_page_path(conn, :index))
  end
end
