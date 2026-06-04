cask "slatepad" do
  version "0.1.2"

  on_arm do
    sha256 "3cf7030752e609ab22752627816812ebea1775e3e5e460266513ff8b5fb1f7bf"
    url "https://github.com/yasharma/Slatepad/releases/download/v0.1.2/Slatepad_0.1.2_aarch64.dmg"
  end

  on_intel do
    sha256 "90e38e34eaa76a6dc74e1ed6ea5568791d6c6c78ebdbefd4c57a467d977d2e36"
    url "https://github.com/yasharma/Slatepad/releases/download/v0.1.2/Slatepad_0.1.2_x64.dmg"
  end

  name "Slatepad"
  desc "Local-first offline notes"
  homepage "https://github.com/yasharma/Slatepad"

  app "Slatepad.app"

  zap trash: [
    "~/Library/Application Support/com.ysharma.slatepad",
  ]
end
