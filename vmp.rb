# Generated from verified release assets; edit the Kenkon source, not this mirror.
class Vmp < Formula
  desc "Simple Python version manager"
  homepage "https://github.com/UekoMundo/homebrew-tap/releases"
  version "0.1.2"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/UekoMundo/homebrew-tap/releases/download/vmp-v0.1.2/vmp-darwin-arm64.tar.gz"
    sha256 "2f808814e8556d02772df28af3b9bfb53335bdc76b164c0d124e0f3ea843c65b"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/UekoMundo/homebrew-tap/releases/download/vmp-v0.1.2/vmp-linux-x86_64.tar.gz"
    sha256 "41ea0f40802118c81f4c047ee6970f42b10bec047d0cff9edf7b31796072b687"
  end

  def install
    bin.install "vmp"
  end

  def caveats
    "Add VMP’s shell hook to your shell profile: eval \"$(vmp env)\""
  end

  test do
    system bin/"vmp", "help"
  end
end
