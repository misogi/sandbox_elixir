defmodule Weather do
  def fetch_json(url) do
    HTTPoison.start
    res = HTTPoison.get!(url)
    Poison.decode!(res.body)
  end

  def get do
    %{"weather" => weather} = fetch_json(
      "http://api.openweathermap.org/data/2.5/weather?q=Tokyo,jp"
    )
    weather
  end
end

Enum.each Weather.get, fn(w) ->
  IO.puts w["main"]
end
