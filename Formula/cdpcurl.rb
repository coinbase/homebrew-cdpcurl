class Cdpcurl < Formula
  desc "curl with CDP API key"
  homepage "https://github.com/coinbase/cdpcurl"
  url "https://github.com/coinbase/cdpcurl/archive/refs/tags/v0.0.6.tar.gz"
  sha256 "57ac52817b48b3ad394ffb448abbfae9491789482c1d1e108cc3f1ee973c73a7"
  license "MIT"

  depends_on "go" => :build

  def install
      system "go", "build", "-o", "#{bin}/cdpcurl", "."
  end

  test do
    assert_match "cdpcurl version", shell_output("#{bin}/cdpcurl --version")
  end
end
