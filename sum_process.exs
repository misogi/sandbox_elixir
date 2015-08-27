defmodule SumProcess do
  def loop do
    receive do
      {:sum, list} ->
        IO.puts Enum.sum(list)
        loop()
    end
  end
end

pid = spawn SumProcess, :loop, []
send(pid, {:sum, [1,2,3,4,5]})
