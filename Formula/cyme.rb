class Cyme < Formula
  desc "List system USB buses and devices; a modern and compatiable `lsusb`"
  homepage "https://github.com/tuna-f1sh/cyme"
  url "https://github.com/tuna-f1sh/cyme/releases/download/v1.5.2/cyme-v1.5.2-universal-apple-darwin.tar.gz"
  version "1.5.2"
  sha256 "046f232048267caa7fdadcc423a3316ab0bbfcfc57b394bc9b952024773886ce"
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
