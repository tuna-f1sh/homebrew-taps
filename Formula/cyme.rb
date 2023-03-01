class Cyme < Formula
  desc "List system USB buses and devices; a modern and compatiable `lsusb`"
  homepage "https://github.com/tuna-f1sh/cyme"
  url "https://github.com/tuna-f1sh/cyme/releases/download/v1.3.1/cyme-v1.3.1-universal-apple-darwin.tar.gz"
  version "1.3.1"
  sha256 "b1ef0c965bbda8b3b008554b3a41631abdb4e145b5d1ed0ad6d17f57e9abf14a"
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
