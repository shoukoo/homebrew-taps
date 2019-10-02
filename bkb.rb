class Bkb < Formula
  desc "a simple CLI to search recent buildkite builds"
  homepage "https://github.com/shoukoo/bkb"
  url "https://github.com/shoukoo/bkb/releases/download/0.1.3/bkb-darwin-amd64.tar.gz"
  version "0.1.3"
  sha256 "64821c469f6f97f7987bbe804564f5557bb5502b7b7f76ea34cdada2efd3890e"

  if OS.linux? && Hardware::CPU.is_64_bit?
    url "https://github.com/shoukoo/bkb/releases/download/0.1.3/bkb-darwin-amd64.tar.gz"
    sha256 "64821c469f6f97f7987bbe804564f5557bb5502b7b7f76ea34cdada2efd3890e"
  end

  def install
    bin.install "bkb"
  end

  test do
    assert_match "bkb v0.1.3", shell_output("#{bin}/bkb -version", 2)
  end
end
