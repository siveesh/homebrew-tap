# Siveesh Homebrew tap

Homebrew casks for Siveesh Kodapully projects.

## SK’s App Menu

```bash
brew tap siveesh/tap
brew trust --cask siveesh/tap/sks-app-menu
brew install --cask siveesh/tap/sks-app-menu
```

Requires Apple silicon and macOS27+. The current app is Developer ID-signed but not notarized; Gatekeeper may prevent opening downloaded copies. This tap does not bypass security checks or delete app preferences. It is not an official Homebrew listing.

[Project and user guide](https://github.com/siveesh/sks-app-menu) · [Releases](https://github.com/siveesh/sks-app-menu/releases) · [Notarization setup](https://github.com/siveesh/sks-app-menu/blob/main/docs/Notarization.md)

Cask version/checksum are mirrored from the project’s Casks directory. Update only after verifying the final release download. MIT licensed.

Homebrew7 requires trust before loading a third-party cask. Review its source and trust only the intended cask. This is not a Gatekeeper bypass.
