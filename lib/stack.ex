defmodule Stack do
  @moduledoc """
  Exercicio do livro Programmer Passport: OTP
  Implement a stack server.
  """
  alias Stack.Boundary, as: Boundary

  def start,
    do: Boundary.StackServer.start_link([])

  def state(pid),
    do: GenServer.call(pid, :state)

  def pop(pid),
    do: GenServer.cast(pid, {:pop})

  def push(pid, elm),
    do: GenServer.cast(pid, {:push, elm})
end
