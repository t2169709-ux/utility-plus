# Utility Plus — status

Target: Minecraft 1.21.1, Fabric Loader 0.16.10+, Fabric API 0.116.7+1.21.1, Java 21.
No Velthoric / Architectury needed: the rope physics is built in.

## Works in code (not yet compiled or tested in game)
- Grappling hook: right-click a block (up to 28 m) to attach, right-click or sneak to release.
- Pendulum swing: server keeps rope length and removes only outward speed, so gravity swings you.
- Jump = pull yourself in, Sprint+Jump = let rope out. Rope is drawn for every player.
- 12 items and 30 blocks are registered with models, textures, recipes, loot tables, en/ru names.

## Not implemented yet
- Backpack, tent, glider, magnetic boots, binoculars, crate, workbench etc. are plain items with no behaviour.
- The 30 blocks are full-cube placeholders: no custom hitboxes, GUIs, containers or functions.

## Verification
- Static resource check: run `python3 tools/validate_assets.py`.
- Java compile: NOT run (needs Loom + Minecraft jars; no network in the authoring sandbox).
- In-game singleplayer / server test: NOT run.
