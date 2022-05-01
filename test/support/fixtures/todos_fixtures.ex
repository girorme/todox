defmodule Todox.TodosFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Todox.Todos` context.
  """

  @doc """
  Generate a todo.
  """
  def todo_fixture(attrs \\ %{}) do
    {:ok, todo} =
      attrs
      |> Enum.into(%{
        description: "some description",
        done: true,
        important: true,
        title: "some title"
      })
      |> Todox.Todos.create_todo()

    todo
  end
end
