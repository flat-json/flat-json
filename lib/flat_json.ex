defmodule FlatJSON do
    @moduledoc false

    @doc ~S"""
    FlatJSON.parse should covert string with JSON to Map

    ## Examples

    iex(1)> ~s({"key":"value"}) |> FlatJSON.parse
    %{"key" => "value"}
    """

    @spec parse(String.t) :: map()
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
