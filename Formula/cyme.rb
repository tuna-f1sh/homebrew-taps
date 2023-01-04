class Cyme < Formula
  desc "List system USB buses and devices; a modern and compatiable `lsusb`"
  homepage "https://github.com/tuna-f1sh/cyme"
  url "https://github.com/tuna-f1sh/cyme/releases/download/v1.2.1/cyme-v1.2.1-x86_64-apple-darwin.tar.gz"
  version "1.2.1"
  sha256 "0bfdc1d41ce247b7e73824ee0e80cbc4eb81d9c20a52b49ae49a933bfe02ffbc"
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
