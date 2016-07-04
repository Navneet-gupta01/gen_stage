defmodule GenStage.Mixfile do
  use Mix.Project

  @version "0.2.0"

  def project do
    [app: :gen_stage,
     version: @version,
     elixir: "~> 1.3",
     package: package(),
     description: "GenStage specification for Elixir",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     docs: [main: "GenStage", source_ref: "v#{@version}",
            source_url: "https://github.com/elixir-lang/gen_stage"]]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [{:ex_doc, "~> 0.12", only: :docs},
     {:inch_ex, only: :docs}]
  end

  defp package do
    %{licenses: ["Apache 2"],
      links: %{"GitHub" => "https://github.com/elixir-lang/gen_stage"}}
  end
end
