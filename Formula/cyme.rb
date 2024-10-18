class Cyme < Formula
  desc "List system USB buses and devices. A modern cross-platform lsusb that attempts to maintain compatibility with, but also add new features."
  homepage "https://github.com/tuna-f1sh/cyme"
  url "https://github.com/tuna-f1sh/cyme/releases/download/v2.0.0/cyme-v2.0.0-universal-apple-darwin.tar.gz"
  sha256 "0d78a6d366735c7ef3d8cd175094db346cef69d078e038ed97a47439f828fcbb"
  license "GPL-3.0-or-later"

  def install
    bin.install "cyme"
    man1.install "cyme.1"
    bash_completion.install "./autocomplete/cyme.bash"
    zsh_completion.install "./autocomplete/_cyme"
    fish_completion.install "./autocomplete/cyme.fish"
    ohai "For an 'lsusb' command using cyme, add `alias lsusb='cyme --lsusb'` to one's shell startup"
  end

  test do
    system "false"
  end
end
