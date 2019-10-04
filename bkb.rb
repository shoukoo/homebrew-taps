class Bkb < Formula
  desc "a simple CLI to search recent buildkite builds"
  homepage "https://github.com/shoukoo/bkb"
  url "https://github.com/shoukoo/bkb/releases/download/0.1.8/bkb-darwin-amd64.tar.gz"
  version "0.1.8"
  sha256 "763800fff02bb1364c375f10ef84f3628c5c38d879422375d7dbcc931e719f8f"

  if OS.linux? && Hardware::CPU.is_64_bit?
    url "https://github.com/shoukoo/bkb/releases/download/0.1.6/bkb-darwin-amd64.tar.gz"
    sha256 "763800fff02bb1364c375f10ef84f3628c5c38d879422375d7dbcc931e719f8f"
  end

  def install
    bin.install "bkb"
  end

  test do
    assert_match "bkb v0.1.8", shell_output("#{bin}/bkb -version", 2)
  end
end
