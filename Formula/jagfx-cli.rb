class JagfxCli < Formula
  desc "Command-line converter and inspector for Jagex synth files"
  homepage "https://github.com/xsyetopz/JagFx"
  version "2.4.1"
  license "MIT"

  depends_on macos: :big_sur

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/xsyetopz/JagFx/releases/download/v2.4.1/JagFx.Cli-2.4.1-macos-arm64.tar.gz"
      sha256 "a07d8ba8cc8f55e5a1809a6e613cc11950c4c40449b137c49b6015575633186b"
    else
      url "https://github.com/xsyetopz/JagFx/releases/download/v2.4.1/JagFx.Cli-2.4.1-macos-x64.tar.gz"
      sha256 "2ef63af346c93ef5cd2c4a849d2e462b6f514d89ec9f4e96b8ec7e2c58f8665d"
    end
  end

  on_linux do
    on_arm do
      disable! because: "JagFx does not publish a Linux arm64 release"
    end

    on_intel do
      url "https://github.com/xsyetopz/JagFx/releases/download/v2.4.1/JagFx.Cli-2.4.1-linux-x64.tar.gz"
      sha256 "e9df1ebb5ead36bcfa2b4a1fd00225a4c7588a0b4a0d0b9eb80164cc43a8eabb"
    end
  end

  def install
    bin.install "JagFx.Cli" => "jagfx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jagfx --version")
  end
end
