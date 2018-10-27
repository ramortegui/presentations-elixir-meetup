defmodule Test.Mixfile do
  use Mix.Project

  def project do
    [app: :calculator_application,
     elixir: "~> 1.4",
     version: "0.1.0",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    [extra_applications: [:logger],
      mod: {CalculatorApplication,[10]}]
  end
  defp deps do
    []
  end
end
