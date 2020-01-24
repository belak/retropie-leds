# RetroPie LEDs

This project is meant as a starting point for adding LED support for an
I-PAC Ultimate. It includes a few scripts to make it easy to set up RGB layouts
on a per-system and per-game basis.

## Repo layout

Scripts are located in the root of the repository. Assuming this repo is cloned
to the expected location, those scripts will look in `$REPO/games` and
`$REPO/systems` for setups which work with umtool.

The game config path is `$REPO/games/$system-$game.json`. As an example, there is a file at
[./games/arcade-xmen.json](./games/arcade-xmen.json) which will be used whenever
the xmen arcade game is loaded.

The system config path is `$REPO/systems/$system.json`. As an example, there is a file at
[./systems/arcade.json](./systems/arcade.json) which will be used whenever there isn't a
matching game config.

If a game layout is not found, it will fall back to the system layout. If that
isn't found, nothing will happen.

When exiting a game, `$REPO/tools/clear.json` will be used to reset the LEDs.

## Setup

- Download and install umtool from [this repo](https://github.com/katie-snow/Ultimarc-linux).
  The umtool binary should be placed in `$HOME/bin`
- Clone this repository to `/home/pi/retropie-leds`
- Symlink `runcommand-onstart.sh` and `runcommand-onend.sh` into `/opt/retropie/configs/all`

## Random Notes

Note that my buttons are laid out like so:

```
5 6 7 8
1 2 3 4
```

From buttons 0-15 the LEDs are ordered RGB. For buttons 16-31, they are ordered BGR.
In particular, this makes 2-player arcade configs confusing.
