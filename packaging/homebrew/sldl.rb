class Sldl < Formula
  desc "Advanced downloader for Soulseek"
  homepage "https://github.com/fiso64/slsk-batchdl"
  url "https://github.com/fiso64/slsk-batchdl/releases/download/v2.6.0/sldl_osx-arm64.zip"
  sha256 "d1029e2dbdd69c826f8a26429fe01116f39d0e4da8690ca992657bc22916d05e"
  license "GPL-3.0-only"

  def install
    chmod 0o755, "sldl"
    bin.install "sldl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sldl --version 2>&1", 0)
  end
end
