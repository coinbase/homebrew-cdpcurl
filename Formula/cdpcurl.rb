class Cdpcurl < Formula
  desc "curl with CDP API key"
  homepage "https://github.com/coinbase/cdpcurl"
  url "https://github.com/coinbase/cdpcurl/archive/refs/tags/v0.0.4.tar.gz"
  sha256 "33e3e6d1f87e82a0d3fde10a23652f56318c9a9b6368b332d3e6cd71d9973435"
  license "MIT"

  depends_on "go" => :build

  def install
      system "go", "build", "-o", "#{bin}/cdpcurl", "."
  end

  test do
    assert_match "cdpcurl version", shell_output("#{bin}/cdpcurl --version")
  end
end
