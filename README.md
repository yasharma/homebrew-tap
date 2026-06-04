# yasharma/homebrew-tap

Homebrew tap for [Slatepad](https://github.com/yasharma/Slatepad) and other casks.

## Install Slatepad (macOS)

```bash
brew tap yasharma/tap
brew install --cask slatepad
```

## Maintainers: update cask after a release

After a GitHub release is published, refresh the DMG checksums in `Casks/slatepad.rb`:

```bash
./scripts/update-cask-sha.sh v0.1.0
```

Commit and push the updated `sha256` values. Users need valid checksums before `brew install --cask slatepad` succeeds.
