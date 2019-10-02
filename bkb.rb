class Bkb < Formula
  desc "a simple CLI to search recent buildkite builds"
  homepage "https://github.com/shoukoo/bkb"
  url "https://github.com/shoukoo/bkb/releases/download/0.1.4/bkb-darwin-amd64.tar.gz"
  version "0.1.4"
  sha256 "2f91fba318b76910a361a6cc1f4f936d575d3d7646d2b4060e9feb4dc34bdcc7"

  if OS.linux? && Hardware::CPU.is_64_bit?
    url "https://github.com/shoukoo/bkb/releases/download/0.1.4/bkb-darwin-amd64.tar.gz"
    sha256 "2f91fba318b76910a361a6cc1f4f936d575d3d7646d2b4060e9feb4dc34bdcc7"
  end

  def install
    bin.install "bkb"
  end

  test do
    assert_match "bkb v0.1.4", shell_output("#{bin}/bkb -version", 2)
  end
end
