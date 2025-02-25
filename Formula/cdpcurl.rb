class Cdpcurl < Formula
  desc "curl with CDP API key"
  homepage "https://github.com/coinbase/cdpcurl"
  url "https://github.com/coinbase/cdpcurl/archive/refs/tags/v0.0.5.tar.gz"
  sha256 "f05566e93e17875bff06c407ab595fb2371b21e1afcdfa3d3c8266e8b451c824"
  license "MIT"

  depends_on "go" => :build

  def install
      system "go", "build", "-o", "#{bin}/cdpcurl", "."
  end

  test do
    assert_match "cdpcurl version", shell_output("#{bin}/cdpcurl --version")
  end
end
