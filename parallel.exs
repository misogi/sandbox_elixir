defmodule Parallel do
  def pmap(collection, func) do
    me = self
    pids = Enum.map collection, fn(elem) ->
      spawn fn ->
        send me, {self, func.(elem)}
      end
    end

    Enum.map pids, fn(pid) ->
      receive do
        {^pid, result} -> result
      end
    end
  end
end

IO.inspect Parallel.pmap(1..100, fn(x) -> x * x end)
