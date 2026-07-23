cask "xsyetopz-jagfx" do
  arch arm: "arm64", intel: "x64"

  version "2.4.1"
  sha256 arm:   "d2e5479824d7e759555e2a027543f8dad257eeb27403e4c48c447a7936cb6aac",
         intel: "2cb5ae4609d3b36a055d22ea726e883ad6139201b8b9cdf39fd48074c77307d8"

  url "https://github.com/xsyetopz/JagFx/releases/download/v#{version}/JagFx-#{version}-macos-#{arch}.dmg"
  name "JagFx"
  desc "Desktop editor for Jagex Audio Synthesis files"
  homepage "https://github.com/xsyetopz/JagFx"

  livecheck do
    url "https://github.com/xsyetopz/JagFx/releases"
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "JagFx.app"
end
