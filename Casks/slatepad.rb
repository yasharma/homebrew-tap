cask "slatepad" do
  version "0.1.0"

  on_arm do
    sha256 "b3a9d65ff96539ef323a80adca3bce1a03d1459f4948333426fe83567de64ac9"
    url "https://github.com/yasharma/Slatepad/releases/download/v0.1.0/Slatepad_0.1.0_aarch64.dmg"
  end

  on_intel do
    sha256 "e557b9a03facda2ad15ea7aa269284adb7c07518f4a42f7b5e65fa4e8be20b4b"
    url "https://github.com/yasharma/Slatepad/releases/download/v0.1.0/Slatepad_0.1.0_x64.dmg"
  end

  name "Slatepad"
  desc "Local-first offline notes"
  homepage "https://github.com/yasharma/Slatepad"

  app "Slatepad.app"

  zap trash: [
    "~/Library/Application Support/com.ysharma.slatepad",
  ]
end
