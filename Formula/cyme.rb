class Cyme < Formula
  desc "List system USB buses and devices; a modern and compatiable `lsusb`"
  homepage "https://github.com/tuna-f1sh/cyme"
  url "https://github.com/tuna-f1sh/cyme/releases/download/v1.2.0/cyme-v1.2.0-x86_64-apple-darwin.tar.gz"
  version "1.2.0"
  sha256 "37ec169ea5a5743e64ce64b8ae734ca6dee71c36ed999c25ac8cc678f181c645"
  license "GPL-3.0-or-later"

  def install
    bin.install "cyme"
    man1.install "cyme.1"
    bash_completion.install "./autocomplete/cyme.bash"
    zsh_completion.install "./autocomplete/_cyme"
    fish_completion.install "./autocomplete/cyme.fish"
  end

  test do
    system "false"
  end
end
