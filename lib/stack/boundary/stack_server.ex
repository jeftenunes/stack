defmodule Stack.Boundary.StackServer do
  use GenServer
  alias Stack.Core.StackCore, as: Core

  def start_link(initial_state) do
    GenServer.start(__MODULE__, initial_state)
  end

  def init(_),
    do: {:ok, []}

  def handle_cast({:pop}, state),
    do: {:noreply, Core.pop(state)}

  def handle_cast({:push, elm}, state),
    do: {:noreply, Core.push(state, elm)}

  def handle_call(:state, _from, state),
    do: {:reply, state, state}
end
