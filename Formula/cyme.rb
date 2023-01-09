class Cyme < Formula
  desc "List system USB buses and devices; a modern and compatiable `lsusb`"
  homepage "https://github.com/tuna-f1sh/cyme"
  url "https://github.com/tuna-f1sh/cyme/releases/download/v1.2.2/cyme-v1.2.2-x86_64-apple-darwin.tar.gz"
  version "1.2.2"
  sha256 "4a7cc7d6a35ed4cfa08c152e22777da99b9085e429bcda399e51a64e732e95b4"
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
