# xsyetopz Homebrew tap

This tap packages release artifacts from projects maintained by xsyetopz.

## Install

Install a formula or cask directly so Homebrew trusts only that package:

```sh
brew install xsyetopz/tap/jagfx-cli
brew install xsyetopz/tap/dehsp
brew install --cask xsyetopz/tap/xsyetopz-jagfx
brew install --cask xsyetopz/tap/xsyetopz-openjoystickdriver
```

To make the tap available for short package names, add it explicitly:

```sh
brew tap xsyetopz/tap
```

## Packages

| Package | Type | Project | Supported hosts |
| --- | --- | --- | --- |
| `jagfx-cli` | Formula | [JagFx](https://github.com/xsyetopz/JagFx) command-line converter and inspector | macOS arm64 and Intel |
| `dehsp` | Formula | [deHSP](https://github.com/xsyetopz/deHSP) HSP 2/3 decompiler | macOS arm64 and Intel |
| `xsyetopz-jagfx` | Cask | [JagFx](https://github.com/xsyetopz/JagFx) desktop editor | macOS arm64 and Intel |
| `xsyetopz-openjoystickdriver` | Cask | [OpenJoystickDriver](https://github.com/xsyetopz/OpenJoystickDriver) menu-bar app | macOS universal |

Formulae install command-line tools. Casks install the desktop applications.

## Maintainer checks

Run the focused checks before publishing a change:

```sh
brew audit --new --formula xsyetopz/tap/jagfx-cli xsyetopz/tap/dehsp
brew audit --new --cask xsyetopz/tap/xsyetopz-jagfx xsyetopz/tap/xsyetopz-openjoystickdriver
brew test-bot --only-tap-syntax
```

Build and test a formula from source or its release archive with:

```sh
brew install --build-from-source xsyetopz/tap/jagfx-cli
brew test xsyetopz/tap/jagfx-cli
```

Update package versions only after the upstream release assets, checksums, and
install paths have been verified.

## Homebrew documentation

- [How to create and maintain a tap](https://docs.brew.sh/How-to-Create-and-Maintain-a-Tap)
- [Formula Cookbook](https://docs.brew.sh/Formula-Cookbook)
- [Cask Cookbook](https://docs.brew.sh/Cask-Cookbook)
- [Tap trust](https://docs.brew.sh/Tap-Trust)
