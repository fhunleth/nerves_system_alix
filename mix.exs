defmodule NervesSystemAlix.Mixfile do
  use Mix.Project

  @version Path.join(__DIR__, "VERSION")
    |> File.read!
    |> String.strip

  def project do
    [app: :nerves_system_alix,
     version: @version,
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
    [{:nerves_system, "~> 0.1.4"},
    #{:nerves_system_br, "~> 0.6.1"},
     {:nerves_system_br, github: "nerves-project/nerves_system_br", tag: "26145be1d313387cdd3cefb7c233fedde806e727"},
     {:nerves_toolchain_i586_unknown_linux_gnu,
        github: "nerves-project/toolchains",
        sparse: "nerves_toolchain_i586_unknown_linux_gnu"},
     {:nerves_toolchain_ctng,
        github: "nerves-project/toolchains",
        sparse: "nerves_toolchain_ctng",
        override: true}
    ]
  end

  defp description do
    """
    Nerves System - Alix http://www.pcengines.ch/alix.htm
    """
  end

  defp package do
    [maintainers: ["Frank Hunleth", "Justin Schneck"],
     files: ["LICENSE", "mix.exs", "nerves_defconfig", "nerves.exs", "README.md", "VERSION", "rootfs-additions"],
     licenses: ["Apache 2.0"],
     links: %{"Github" => "https://github.com/nerves-project/nerves_system_alix"}]
  end
end
