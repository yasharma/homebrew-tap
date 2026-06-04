# yasharma/homebrew-tap

Homebrew tap for [Slatepad](https://github.com/yasharma/Slatepad) and other casks.

## Install Slatepad (macOS)

```bash
brew tap yasharma/tap
brew install --cask slatepad

# One-time: allow the unsigned app through macOS Gatekeeper
xattr -dr com.apple.quarantine /Applications/Slatepad.app

open /Applications/Slatepad.app
```

### Why the `xattr` step?

Slatepad isn't signed with an Apple Developer certificate yet, so on first launch macOS will show _"Slatepad is damaged and can't be opened"_. That `xattr` command removes the quarantine flag macOS attaches to anything downloaded from the internet. It's a **one-time** step per install — re-run it after each `brew upgrade --cask slatepad`.

### Upgrade

```bash
brew update
brew upgrade --cask slatepad
xattr -dr com.apple.quarantine /Applications/Slatepad.app
```

### Uninstall

```bash
brew uninstall --cask slatepad             # keep notes
brew uninstall --cask --zap slatepad       # also delete saved notes
```

## Maintainers: update cask after a release

After a GitHub release is published, refresh the DMG checksums in `Casks/slatepad.rb`:

```bash
./scripts/update-cask-sha.sh v0.1.0
```

Commit and push the updated `sha256` values. Users need valid checksums before `brew install --cask slatepad` succeeds.
