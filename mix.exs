defmodule PlugFprof.Mixfile do
  use Mix.Project

  def project do
    [app: :plug_fprof,
     version: "0.0.1",
     elixir: "~> 1.0",
     description: description,
     package: package,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger, :tools]]
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
    []
  end

  defp description do
    """
    A Plug that adds fprof tracing to requests, to allow for easy profiling.
    """
  end

  defp package do
    [contributors: ["Graeme Coupar"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/obmarg/plug_fprof"}]
  end
end
