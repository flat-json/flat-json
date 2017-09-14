defmodule FlatJSON do
    def parse(s) do
        s
        |> String.slice(1..-2)
        |> String.replace("\"", "")
        |> String.split(",")
        |> Enum.map(fn (p) -> String.split(p, ":") end)
        |> Map.new(fn [key, value] -> {key, value} end)
    end
end
