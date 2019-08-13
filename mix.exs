defmodule Foo.MixProject do
  use Mix.Project

  def project do
    [
      app: :foo,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      compilers: Mix.compilers() ++ [:boundaries],
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:jason, "~> 1.1"},
      {:ecto, "~> 3.1"},
      {:boundaries, git: "https://github.com/sasa1977/boundaries", branch: "master"}
    ]
  end
end
