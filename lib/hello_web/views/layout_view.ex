defmodule HelloWeb.LayoutView do
  use HelloWeb, :view

  def logged_in?(conn) do
    Map.has_key?(conn.assigns, :current_user)
  end
end
