cask "xsyetopz-openjoystickdriver" do
  version "0.4.1"
  sha256 "5532ea07ded30762812f8419c31c47b217129e8fd127dbc28d438806f3b37782"

  url "https://github.com/xsyetopz/OpenJoystickDriver/releases/download/#{version}/OpenJoystickDriver-#{version}-macOS.dmg"
  name "OpenJoystickDriver"
  desc "Menu-bar app and virtual game controller driver"
  homepage "https://github.com/xsyetopz/OpenJoystickDriver"

  livecheck do
    url "https://github.com/xsyetopz/OpenJoystickDriver/releases"
    strategy :github_latest
  end

  depends_on macos: :catalina

  app "OpenJoystickDriver.app"
  binary "OpenJoystickDriver.app/Contents/MacOS/OpenJoystickDriver", target: "openjoystickdriver"

  uninstall quit: "com.openjoystickdriver"
end
