defmodule NlwWeb.RestaurantsController do
  use NlwWeb, :controller

  alias Nlw.Restaurant
  alias Nlw.Restaurants.Create

  alias Nlw.FallbackController

  action_fallback FallbackController

  def create(conn, params) do
    with {:ok, %Restaurant{} = restaurant} <- Create.call(params) do
    conn
    |> put_status(:created)
    |> render("create.json", restaurant: restaurant)
    end
  end
end
