defmodule TimeBench.Mixfile do
  use Mix.Project

  def project do
    [app: :time_bench,
     version: "0.0.1",
     elixir: "~> 1.3-dev",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :tzdata, :calendar, :calecto, :timex_ecto, :ecto]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:benchfella, "> 0.0.0"},
      {:timex_ecto, "1.0.4"},
      {:calendar, "0.14.1"},
      {:calecto, "0.6.0"},
    ]
  end
end
