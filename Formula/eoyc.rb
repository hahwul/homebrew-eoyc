class Eoyc < Formula
  desc "Encoding Only Your Choices"
  homepage "https://github.com/hahwul/eoyc"
  url "https://github.com/hahwul/eoyc/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "a2a8c9f3a318bb9e32bf0a830bfc693e526f7b7cf89f1463bb95af80d1f659ea"
  version "0.1.1"
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
