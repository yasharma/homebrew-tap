#!/usr/bin/env bash
set -euo pipefail

# Usage: ./scripts/update-cask-sha.sh v0.1.0
# Downloads release DMGs and prints sha256 for Casks/slatepad.rb.
#
# Asset names match Tauri macOS bundles: Slatepad_<version>_aarch64.dmg and Slatepad_<version>_x64.dmg

TAG="${1:?Usage: $0 vX.Y.Z (e.g. v0.1.0)}"
VERSION="${TAG#v}"
BASE="https://github.com/yasharma/Slatepad/releases/download/${TAG}"

tmpdir="$(mktemp -d)"
trap 'rm -rf "$tmpdir"' EXIT

for spec in "arm:Slatepad_${VERSION}_aarch64.dmg" "intel:Slatepad_${VERSION}_x64.dmg"; do
  arch="${spec%%:*}"
  file="${spec#*:}"
  url="${BASE}/${file}"
  echo "==> ${arch}: ${url}"
  curl -fsSL -o "${tmpdir}/${file}" "${url}"
  hash="$(shasum -a 256 "${tmpdir}/${file}" | awk '{print $1}')"
  echo "    sha256 \"${hash}\"  # on_${arch} / ${file}"
done

echo
echo "Paste the sha256 lines into Casks/slatepad.rb (on_arm / on_intel blocks)."
