use Mix.Config

config :nerves_system_alix, :nerves_env,
  type: :system,
  build_platform: Nerves.System.Platforms.BR,
  bakeware: [target: "alix", recipe: "nerves/alix"],
  ext: [
    defconfig: "nerves_defconfig"
  ]
