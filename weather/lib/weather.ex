defmodule Weather do
  def get do
    HTTPoison.start
    HTTPoison.get!(
      "http://api.openweathermap.org/data/2.5/weather?q=Tokyo,jp"
    ) |> process_response
  end

  def process_response(
    %{status_code: 200, body: body}
  ) do
    body
      |> Poison.decode!
      |> extract_weather
  end

  def extract_weather(%{"weather" => weather}), do: weather
end

Enum.each Weather.get, fn(w) ->
  IO.puts w["main"]
end
