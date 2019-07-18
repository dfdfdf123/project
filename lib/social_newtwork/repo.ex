defmodule SocialNewtwork.Repo do
  use Ecto.Repo,
    otp_app: :social_newtwork,
    adapter: Ecto.Adapters.Postgres
end
