defmodule LeagueOfLegends.Mixfile do
  use Mix.Project

  def project do
    [app: :league_of_legends,
     version: "0.0.1",
     elixir: "~> 1.0",
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [
      mod: {LeagueOfLegends, []},
      applications: [:logger, :httpoison, :exjsx]
    ]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
      {:httpoison, "~> 0.7.2"},
      {:exjsx, "~> 3.1.0", app: false}
    ]
  end
end
