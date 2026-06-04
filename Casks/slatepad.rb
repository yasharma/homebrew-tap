cask "slatepad" do
  version "0.1.3"

  on_arm do
    sha256 "303b374613dc035099e086a2948cc3a98fb692fa75612f8c2ae41829fd4f7f96"
    url "https://github.com/yasharma/Slatepad/releases/download/v0.1.3/Slatepad_0.1.3_aarch64.dmg"
  end

  on_intel do
    sha256 "6c620639830f3297bd4b596b499bda3b95357ae98000b5dcea5175356e1642d6"
    url "https://github.com/yasharma/Slatepad/releases/download/v0.1.3/Slatepad_0.1.3_x64.dmg"
  end

  name "Slatepad"
  desc "Local-first offline notes"
  homepage "https://github.com/yasharma/Slatepad"

  app "Slatepad.app"

  zap trash: [
    "~/Library/Application Support/com.ysharma.slatepad",
  ]
end
