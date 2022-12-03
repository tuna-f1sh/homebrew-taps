class Cyme < Formula
  desc "List system USB buses and devices; a modern and compatiable `lsusb`"
  homepage "https://github.com/tuna-f1sh/cyme"
  url "https://github.com/tuna-f1sh/cyme/releases/download/0.7.8/cyme-v0.7.8-x86_64-apple-darwin.tar.gz"
  version "0.7.8"
  sha256 "adf7130d5b414d4045f945f87e32d812992a175968447b9012ea7239a18498ca"
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
