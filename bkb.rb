class Bkb < Formula
  desc "a simple CLI to search recent buildkite builds"
  homepage "https://github.com/shoukoo/bkb"
  url "https://github.com/shoukoo/bkb/releases/download/0.1.6/bkb-darwin-amd64.tar.gz"
  version "0.1.6"
  sha256 "11902370b7ef3ed3214865f51d3ee523ba3b02a24120d90f38b4d501169bc679"

  if OS.linux? && Hardware::CPU.is_64_bit?
    url "https://github.com/shoukoo/bkb/releases/download/0.1.6/bkb-darwin-amd64.tar.gz"
    sha256 "11902370b7ef3ed3214865f51d3ee523ba3b02a24120d90f38b4d501169bc679"
  end

  def install
    bin.install "bkb"
  end

  test do
    assert_match "bkb v0.1.6", shell_output("#{bin}/bkb -version", 2)
  end
end
