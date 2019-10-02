class Bkb < Formula
  desc "a simple CLI to search recent buildkite builds"
  homepage "https://github.com/shoukoo/bkb"
  url "https://github.com/shoukoo/bkb/releases/download/0.1.5/bkb-darwin-amd64.tar.gz"
  version "0.1.5"
  sha256 "539dd8372144183c642e47795174d7f95b030fafc3f1286dcd0b8ef214db0aeb"

  if OS.linux? && Hardware::CPU.is_64_bit?
    url "https://github.com/shoukoo/bkb/releases/download/0.1.5/bkb-darwin-amd64.tar.gz"
    sha256 "539dd8372144183c642e47795174d7f95b030fafc3f1286dcd0b8ef214db0aeb"
  end

  def install
    bin.install "bkb"
  end

  test do
    assert_match "bkb v0.1.5", shell_output("#{bin}/bkb -version", 2)
  end
end
