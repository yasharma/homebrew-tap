cask "slatepad" do
  version "0.1.0"

  # Replace placeholders after the first GitHub release (see scripts/update-cask-sha.sh).
  on_arm do
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    url "https://github.com/yasharma/Slatepad/releases/download/v0.1.0/Slatepad_0.1.0_aarch64.dmg"
  end

  on_intel do
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    url "https://github.com/yasharma/Slatepad/releases/download/v0.1.0/Slatepad_0.1.0_x86_64.dmg"
  end

  name "Slatepad"
  desc "Local-first offline notes"
  homepage "https://github.com/yasharma/Slatepad"

  app "Slatepad.app"

  zap trash: [
    "~/Library/Application Support/com.ysharma.slatepad",
  ]
end
