class Cyme < Formula
  desc "Port of lsusb to macOS using system_profiler output"
  homepage "https://github.com/tuna-f1sh/cyme"
  url "https://github.com/tuna-f1sh/cyme/archive/refs/tags/0.1.1.tar.gz"
  version "0.1.1"
  sha256 "77aee59a6f26fdf5cdcc7196c3fd88e1c1e022dbdde48e29827eef4c309a9b7f"
  license "GPL-3.0-or-later"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "false"
  end
end
