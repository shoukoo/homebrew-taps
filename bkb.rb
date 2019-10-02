class Bkb < Formula
  desc "a simple CLI to search recent buildkite builds"
  homepage "https://github.com/shoukoo/bkb"
  url "https://github.com/shoukoo/bkb/releases/download/0.1.2/bkb-darwin-amd64.tar.gz"
  version "0.1.2"
  sha256 "46c0cda496f71ad0586864ee88a3e915a5ae3232c7060dace8ff76ab180855b1"

  if OS.linux? && Hardware::CPU.is_64_bit?
    url "https://github.com/shoukoo/bkb/releases/download/0.1.0/bkb-darwin-amd64"
    sha256 "46c0cda496f71ad0586864ee88a3e915a5ae3232c7060dace8ff76ab180855b1"
  end

  def install
    bin.install "bkb"
  end

  test do
    assert_match "bkb v0.1.2", shell_output("#{bin}/bkb -version", 2)
  end
end
