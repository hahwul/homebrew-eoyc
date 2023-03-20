class Eoyc < Formula
  desc "Encoding Only Your Choices"
  homepage "https://github.com/hahwul/eoyc"
  url "https://github.com/hahwul/eoyc/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "89235f88697fd3bc5ef3c62d81fdb1461af8b7f3bd99b0365efcf404cb9d4b5b"
  version "0.1.0"
  depends_on "crystal"

  def install
    system "shards install"
    system "shards build --release --no-debug"
    bin.install "bin/eoyc"
  end

  test do
    system "{bin}/eoyc", "-v"
  end
end
