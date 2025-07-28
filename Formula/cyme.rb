class Cyme < Formula
  desc "List system USB buses and devices. A modern cross-platform lsusb."
  homepage "https://github.com/tuna-f1sh/cyme"
  url "https://github.com/tuna-f1sh/cyme/releases/download/v2.2.4/cyme-v2.2.4-universal-apple-darwin.tar.gz"
  sha256 "5d157dde8ebaff95e3bf4191d4a05cd1ca869b19e4af8332b1df09d56f73ebb2"
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
    # Test fails on headless CI
    return if OS.linux? && ENV["HOMEBREW_GITHUB_ACTIONS"]

    output = JSON.parse(shell_output("#{bin}/cyme --tree --json"))
    assert_predicate output["buses"], :present?
  end
end
