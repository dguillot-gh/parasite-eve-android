# Parasite Eve for Android (psxrecomp)

This repository holds only what makes **Parasite Eve** run as a native Android app: its
configuration, code entry points (seeds), helper tools and play captures. **It contains no game
code or data.** You build the app on your own PC from **your own disc**; nothing from the disc is
ever uploaded.

Part of [psx-android](https://github.com/dguillot-gh/psx-android), which has the build scripts and
the full how-to. Engine: [psxrecomp-android](https://github.com/dguillot-gh/psxrecomp-android)
(mstan/psxrecomp + our Android layer; PolyForm Noncommercial: personal, non-commercial use only).

## Status
Plays (2026-10-07): steady 60 fps on a Pixel 8. Disc 1 only tested.

## The disc you need
- Serial **SLUS-00662**, 2 disc(s), as `.cue` + `.bin` (a raw rip of your own copy).
- Tested with: `Parasite Eve (USA) (Disc 1).cue`, `Parasite Eve (USA) (Disc 2).cue` (your file names may differ, that's fine).
- Known-good dump, Track 1 MD5: `efae1df4faf4aadbfd4dc3aa022296cf`. Other dumps of the same serial usually work too.

## Build it and put it on your phone
Follow **Get a game on your phone** in the psx-android README once (PC setup), then:

```powershell
pwsh -File go.ps1 -Game parasite_eve_recomp -Disc "D:\my discs\<disc 1>.cue","D:\my discs\<disc 2>.cue" -Speed
```

List every disc's `.cue` in order, separated by commas. The app (com.psxrecomp.parasiteeve) is installed on the phone
over USB, and the disc is copied to the phone's `Download\parasite_eve_recomp` folder. On the phone: open the app,
**Select game file**, side menu > your phone > Download > parasite_eve_recomp, pick the `.cue` files (all of them), then **Play**.

## What's here
| File | What |
|---|---|
| `game.toml` | the game's configuration (boot program, memory layout, controller, video) |
| `seeds/` | code entry points the recompiler starts from |
| `play_captures.json` | addresses of code the game loaded while being played; makes the speed pre-compile cover it |
| `tools/`, `aot_exclude.txt` | game-specific helpers / pieces kept off the pre-compile (when present) |
