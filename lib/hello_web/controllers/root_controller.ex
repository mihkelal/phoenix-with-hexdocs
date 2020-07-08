defmodule HelloWeb.RootController do
  use HelloWeb, :controller

  def index(conn, _) do
    if Plug.Conn.get_session(conn, :user_id) do
      redirect(conn, to: Routes.cms_page_path(conn, :index))
    else
      redirect(conn, to: Routes.session_path(conn, :new))
    end
  end
end
