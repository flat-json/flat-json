defmodule FlatJSON.Mixfile do
  use Mix.Project

  def project do
    [
      app: :flat_json,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      description: description(),
      package: package(),
      name: "FlatJSON",
      source_url: "https://github.com/spirinvladimir/flat-json"
    ]
  end

  def application do
    []
  end

  defp description() do
    "A few sentences (a paragraph) describing the project."
  end

  defp package() do
    [
      name: "Flat JSON",
      files: ["lib", "mix.exs", "README.md"],
      maintainers: ["Vladimir Spirin"],
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "https://github.com/flat-json/flat-json"}
    ]
  end
end
