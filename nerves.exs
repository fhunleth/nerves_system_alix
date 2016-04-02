use Mix.Config

config :nerves_system_alix, :nerves_env,
  type:  :system,
  build_platform: :nerves_system_br,
  bakeware: [target: "alix", recipe: "nerves/alix"],
  ext: [
    defconfig: "nerves_defconfig"
  ]
