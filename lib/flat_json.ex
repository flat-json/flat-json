defmodule FlatJSON do
    def parse(s) do
        s
        |> String.slice(1..-2)
        |> String.replace("\"", "")
        |> String.split(",")
        |> Enum.map(fn (p) -> String.split(p, ":") end)
        |> Enum.reduce(%{}, fn (p, acc) -> Map.put(acc, List.first(p), List.last(p)) end)
    end
end
