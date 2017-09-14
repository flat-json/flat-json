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

The package can be installed
by adding `flat_json` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:flat_json, git: "git://github.com/flat-json/flat-json.git"}
  ]
end
```

## Usage
```bash
iex(1)> ~s({"key":"value"}) |> FlatJSON.parse
%{"key" => "value"}
```
