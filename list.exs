b = Enum.map([1,2,3], fn(x) -> x * x end)
IO.puts b
a = [1,2,3]
IO.puts a
IO.puts List.delete_at(a, 0)
IO.puts "hoge"
