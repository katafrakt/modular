defmodule Modular.MixProject do
  use Mix.Project

  @version "0.2.0"
  @desc "Apply modular programming principles and patterns to build better Elixir apps"

  def project do
    [
      app: :modular,
      version: @version,
      elixir: "~> 1.7",
      deps: deps(),

      # Hex
      description: @desc,
      package: package(),

      # Docs
      name: "Modular",
      docs: docs()
    ]
  end

  def application do
    [
      extra_applications: []
    ]
  end

  defp deps do
    [
      {:ex_doc, "~> 0.20", only: :dev}
    ]
  end

  defp package do
    [
      maintainers: ["Karol Słuszniak"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/surgeventures/modular",
        "Shedul" => "https://www.shedul.com"
      },
      files: ~w(.formatter.exs mix.exs LICENSE.md README.md CHANGELOG.md lib)
    ]
  end

  defp docs do
    [
      main: "readme",
      source_ref: "v#{@version}",
      canonical: "http://hexdocs.pm/modular",
      source_url: "https://github.com/surgeventures/modular",
      extras: extras()
    ]
  end

  defp extras do
    [
      "README.md",
      "CHANGELOG.md"
    ]
  end
end
