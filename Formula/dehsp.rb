class Dehsp < Formula
  desc "Decompiler for Hot Soup Processor 2 and 3 files"
  homepage "https://github.com/xsyetopz/deHSP"
  version "2.2.0"
  license "0BSD"

  depends_on macos: :big_sur

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/xsyetopz/deHSP/releases/download/v2.2.0/deHSP-2.2.0-osx-arm64.zip"
      sha256 "43914060d54105ddfee78ff189008460af74af4a4db379882abf18790a9b4fb3"
    else
      url "https://github.com/xsyetopz/deHSP/releases/download/v2.2.0/deHSP-2.2.0-osx-x64.zip"
      sha256 "bd0d38e5fc289d5022a9d1104d5ac03487d22755eef6001450376da91fcef447"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"dehsp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dehsp --version")
  end
end
