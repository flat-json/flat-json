defmodule FlatJSONTest do
  use ExUnit.Case
  doctest FlatJSON

  test "one pair" do
    assert FlatJSON.parse( ~s({"key":"value"}) ) == %{"key" => "value"}
  end

  test "two pairs" do
    assert FlatJSON.parse( ~s({"a":"b","c":"d"}) ) == %{"a" => "b", "c" => "d"}
  end

  test "numbers to strings" do
    assert FlatJSON.parse( ~s({"one":1}) ) == %{"one" => "1"}
  end

end
