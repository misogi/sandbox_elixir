defmodule Moth do
def add(0) do
  0
end

def add(1) do
 1
end
def add(x) do
 add(x-1) + add(x-2)
end

def case(x)do
  case x do
   0 -> 0
   1 -> 1
   _ -> case(x-1) + case(x-2)
  end
end
end

IO.puts Moth.add(10)
IO.puts Moth.case(10)
