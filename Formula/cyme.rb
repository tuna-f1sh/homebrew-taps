class Cyme < Formula
  desc "List system USB buses and devices; a modern and compatiable `lsusb`"
  homepage "https://github.com/tuna-f1sh/cyme"
  url "https://github.com/tuna-f1sh/cyme/releases/download/v1.4.0/cyme-v1.4.0-universal-apple-darwin.tar.gz"
  version "1.4.0"
  sha256 "d42e7c6b1bf782a214fc33bfd467dc2b24e161b62cdc100c1c76cf9b89e83a64"
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
