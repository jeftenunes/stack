defmodule Stack.Core.StackCore do
  def pop(stack), do: tl(stack)
  def push(stack, elm), do: [elm | stack]
end
