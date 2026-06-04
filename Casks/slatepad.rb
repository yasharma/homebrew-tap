cask "slatepad" do
  version "0.1.4"

  on_arm do
    sha256 "209c0ff25b3e04d995f26a2c384ff39f93e15473f55a5f160418d3ba1c83ae80"
    url "https://github.com/yasharma/Slatepad/releases/download/v0.1.4/Slatepad_0.1.4_aarch64.dmg"
  end

  on_intel do
    sha256 "37f4d82e23cc9ff5655f4fd43a96938bf434d9b9a199a9003f408f263caee5c4"
    url "https://github.com/yasharma/Slatepad/releases/download/v0.1.4/Slatepad_0.1.4_x64.dmg"
  end

  name "Slatepad"
  desc "Local-first offline notes"
  homepage "https://github.com/yasharma/Slatepad"

  app "Slatepad.app"

  zap trash: [
    "~/Library/Application Support/com.ysharma.slatepad",
  ]
end
