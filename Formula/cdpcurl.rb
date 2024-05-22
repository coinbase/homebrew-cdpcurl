class Cdpcurl < Formula
  desc "curl with CDP API key"
  homepage "https://github.com/coinbase/cdpcurl"
  url "https://github.com/coinbase/cdpcurl/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "8a0f88d932a5d329f513733b812dcb46400db5503ad5c99d6663e52ae358047b"
  license "MIT"

  depends_on "go" => :build

  def install
      system "go", "build", "-o", "#{bin}/cdpcurl", "."
  end

  test do
    assert_match "cdpcurl version", shell_output("#{bin}/cdpcurl --version")
  end
end
