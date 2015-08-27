b = Enum.map([1,2,3], fn(x) -> x * x end)
IO.puts b
a = [1,2,3]
IO.puts a
IO.puts List.delete_at(a, 0)
IO.puts "hoge"

[h|t] = [1,2,3,4,5]
IO.puts h
IO.puts t

defmodule MyList do
  def each([h|tail], f) do
    f.(h)
    each(tail, f)
  end

  def each([], _), do: nil
end

MyList.each [1,2,3,4,5], fn(x) -> IO.puts x end

a = [1,2,3,4,5]
IO.puts Enum.map a, fn(x) -> x * x end
IO.puts Enum.filter a, fn(x) -> rem(x, 2) end
IO.puts Enum.sum a

spawn fn -> Enum.sum a end
