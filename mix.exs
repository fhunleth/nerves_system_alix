defmodule NervesSystemAlix.Mixfile do
  use Mix.Project

  def project do
    [app: :nerves_system_alix,
     version: "0.4.0-rc2",
     elixir: "~> 1.2",
     compilers: Mix.compilers ++ [:nerves_system],
     description: description,
     package: package,
     deps: deps]
  end

  def application do
   []
  end

  defp deps do
    [{:nerves_system, path: "../nerves_system"},
     {:nerves_system_br, path: "../nerves-system-br"},
     {:nerves_toolchain_i586_unknown_linux_gnu, github: "nerves-project/nerves_toolchain_i586_unknown_linux_gnu"}]
  end

  defp description do
    """
    Nerves System - Alix http://www.pcengines.ch/alix.htm
    """
  end

  defp package do
    [maintainers: ["Frank Hunleth", "Justin Schneck"],
     licenses: ["Apache 2.0"],
     links: %{"Github" => "https://github.com/nerves-project/nerves_system_alix"}]
  end
end
