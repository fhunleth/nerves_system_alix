# NervesSystemAlix

[![Build Status](https://travis-ci.org/nerves-project/nerves_system_alix.png?branch=master)](https://travis-ci.org/nerves-project/nerves_system_alix)

This configuration is for a PC Engines ALIX board using an AMD Geode LX CPU. It
was a formerly supported platform for Nerves. The configuration is been modified
as changes to `nerves_system_br` have been made, but the changes have not been
tested. If you're looking for a more tested x86 board, look at
`nerves_system_ag150`.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add nerves_system_alix to your list of dependencies in `mix.exs`:

        def deps do
          [{:nerves_system_alix, "~> 0.4.0"}]
        end

  2. Ensure nerves_system_alix is started before your application:

        def application do
          [applications: [:nerves_system_alix]]
        end
