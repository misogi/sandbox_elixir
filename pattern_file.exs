defmodule PatternFile do
  def dump(path) do
    File.read(path) |> puts
  end

  def puts({:ok, res}) do
    IO.puts res
  end

  def puts({:error, reason}) do
    IO.puts :stderr, "error　#{reason}"
  end
end

PatternFile.dump("/etc/hosts")
PatternFile.dump("no such file")
