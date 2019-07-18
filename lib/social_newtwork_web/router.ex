defmodule SocialNewtworkWeb.Router do
  use SocialNewtworkWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", SocialNewtworkWeb do
    pipe_through :api
  end
end
