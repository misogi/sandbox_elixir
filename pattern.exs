points = {:point, 10, 45}
{:point, x, y} = points
IO.puts x
IO.puts y

result = case File.read("/etc/hosts") do
  {:ok, res} -> res
  {:error, :enoent} -> "Not Found"
  {:error, :eaccess} -> "Forbidden"
  _ -> "?"
end

IO.puts result
