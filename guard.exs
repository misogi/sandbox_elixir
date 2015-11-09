defmodule Guard do
  def abs(n) when n >= 0, do: n
  def abs(n), do: -n
end

IO.puts Guard.abs(10)
IO.puts Guard.abs(-10)
