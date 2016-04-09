use Mix.Config

config :nerves_system_alix, :nerves_env,
  type: :system,
  bakeware: [target: "alix", recipe: "nerves/alix"],
  build_platform: Nerves.System.Platforms.BR,
  build_config: [
    defconfig: "nerves_defconfig"
  ]
