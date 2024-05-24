class Cdpcurl < Formula
  desc "curl with CDP API key"
  homepage "https://github.com/coinbase/cdpcurl"
  url "https://github.com/coinbase/cdpcurl/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "39abc98e3a0c3654d1c722fb069530ba67aee47d39e6760f2d1ad98c160e1c58"
  license "MIT"

  depends_on "go" => :build

  def install
      system "go", "build", "-o", "#{bin}/cdpcurl", "."
  end

  test do
    assert_match "cdpcurl version", shell_output("#{bin}/cdpcurl --version")
  end
end
