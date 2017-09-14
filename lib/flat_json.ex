defmodule FlatJSON do
    def parse(s) do
        s
        |> String.replace_leading("{", "")
        |> String.replace_trailing("}", "")
        |> String.replace("\"", "")
        |> String.split(",")
        |> Enum.map(fn (p) -> String.split(p, ":") end)
        |> Map.new(fn [key, value] -> {key, value} end)
    end
end
