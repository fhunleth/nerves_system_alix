use Mix.Config

version =
  Path.join(__DIR__, "VERSION")
  |> File.read!
  |> String.strip

pkg = :nerves_system_alix

config pkg, :nerves_env,
  type: :system,
  version: version,
  compiler: :nerves_package,
  artifact_url: [
    "https://github.com/nerves-project/#{pkg}/releases/download/v#{version}/#{pkg}-v#{version}.tar.gz",
  ],
  platform: Nerves.System.BR,
  platform_config: [
    defconfig: "nerves_defconfig",
  ],
  checksum: [
    "fwup.conf",
    "linux-3.13.config",
    "nerves_defconfig",
    "nerves.exs",
    "post-build.sh",
    "post-createfs.sh",
    "syslinux.cfg",
    "VERSION"
  ]
