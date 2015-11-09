factors = fn(n) ->
  for x <- 1..n, rem(n,x) == 0, do: x
end
factors.(100) |> IO.inspect
