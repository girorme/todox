defmodule Todox.Todos.Todo do
  use Ecto.Schema
  import Ecto.Changeset

  schema "todos" do
    field :description, :string
    field :done, :boolean, default: false
    field :important, :boolean, default: false
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(todo, attrs) do
    todo
    |> cast(attrs, [:title, :description, :done, :important])
    |> validate_required([:title, :description, :done, :important])
  end
end
