# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Boots.Repo.insert!(%Boots.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
Boots.Repo.delete_all Boots.Coherence.User

Boots.Coherence.User.changeset(%Boots.Coherence.User{}, %{name: "Test User", email: "testuser@example.com", password: "secret", password_confirmation: "secret"})
|> Boots.Repo.insert!
|> Coherence.ControllerHelpers.confirm!
