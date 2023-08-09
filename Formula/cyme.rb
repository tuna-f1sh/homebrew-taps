class Cyme < Formula
  desc "List system USB buses and devices; a modern and compatiable `lsusb`"
  homepage "https://github.com/tuna-f1sh/cyme"
  url "https://github.com/tuna-f1sh/cyme/releases/download/v1.5.0/cyme-v1.5.0-universal-apple-darwin.tar.gz"
  version "1.5.0"
  sha256 "fc78524c05536c6576f3db9cef74f79b4f39526d6a5686fd2a24c4d30b65c162"
  license "GPL-3.0-or-later"
  depends_on "libusb"

  def install
    bin.install "cyme"
    man1.install "cyme.1"
    bash_completion.install "./autocomplete/cyme.bash"
    zsh_completion.install "./autocomplete/_cyme"
    fish_completion.install "./autocomplete/cyme.fish"
    ohai "For an 'lsusb' command using cyme, add \`alias lsusb='cyme --lsusb'\` to one's shell startup"
  end

  test do
    system "false"
  end
end
