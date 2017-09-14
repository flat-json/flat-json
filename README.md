# Flat JSON

**Decode string to JSON for Elixir & ElixirScript**

## Algorithm
```elixir
def parse(s) do
  s
  |> String.slice(1..-2)
  |> String.replace("\"", "")
  |> String.split(",")
  |> Enum.map(fn (p) -> String.split(p, ":") end)
  |> Enum.reduce(%{}, fn (p, acc) -> Map.put(acc, List.first(p), List.last(p)) end)
end
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `flat_json` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:flat_json, "~> 0.1.0"}
  ]
end
```

## Usage
```bash
iex(1)> ~s({"key":"value"}) |> FlatJSON.parse
%{"key" => "value"}
```
Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/flat_json](https://hexdocs.pm/flat_json).
