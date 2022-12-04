class Cyme < Formula
  desc "List system USB buses and devices; a modern and compatiable `lsusb`"
  homepage "https://github.com/tuna-f1sh/cyme"
  url "https://github.com/tuna-f1sh/cyme/releases/download/v1.0.2/cyme-v1.0.2-x86_64-apple-darwin.tar.gz"
  version "1.0.2"
  sha256 "6387ae3800e5acf6dec089e6496c51ab48e9736606d60c3bb12e2b7c1d2f977f"
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
