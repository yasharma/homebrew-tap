cask "slatepad" do
  version "0.1.1"

  on_arm do
    sha256 "0f518ab335597e7fc8c27a2d15fd69358073b65f8f2727a29496bb0340917362"
    url "https://github.com/yasharma/Slatepad/releases/download/v0.1.1/Slatepad_0.1.1_aarch64.dmg"
  end

  on_intel do
    sha256 "c41e46e4991fb7f2cd16926f6244efdba471633f300dc0420f44670e48518571"
    url "https://github.com/yasharma/Slatepad/releases/download/v0.1.1/Slatepad_0.1.1_x64.dmg"
  end

  name "Slatepad"
  desc "Local-first offline notes"
  homepage "https://github.com/yasharma/Slatepad"

  app "Slatepad.app"

  zap trash: [
    "~/Library/Application Support/com.ysharma.slatepad",
  ]
end
