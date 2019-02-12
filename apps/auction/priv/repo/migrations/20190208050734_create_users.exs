defmodule Auction.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :username, :string
      add :email, :string
      add :hashed_password, :string
      timestamps()
    end

    # Make sure that no two entries will have the same `username`
    create unique_index(:users, [:username])
  end
end
