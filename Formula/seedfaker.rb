# typed: false
# frozen_string_literal: true

class Seedfaker < Formula
  desc "Deterministic synthetic data generator"
  homepage "https://github.com/opendsr-std/seedfaker"
  license "MIT"
  version "0.4.0-alpha.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opendsr-std/seedfaker/releases/download/v0.4.0-alpha.1/seedfaker-darwin-arm64.tar.gz"
      sha256 "a5b9d3d40831a5588d16ef1e87cfecaf9badc0f94e652a88bdf2bbf5140d70df"
    else
      url "https://github.com/opendsr-std/seedfaker/releases/download/v0.4.0-alpha.1/seedfaker-darwin-x64.tar.gz"
      sha256 "62a4b9c336b20e4b875296fc187d71f6367f1ec324be4d309725bc0ad71bf1a3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opendsr-std/seedfaker/releases/download/v0.4.0-alpha.1/seedfaker-linux-arm64.tar.gz"
      sha256 "daa49c8131e00d8f54c8b12bbdf4053a97a82b33f53b1327b8108868bd106382"
    else
      url "https://github.com/opendsr-std/seedfaker/releases/download/v0.4.0-alpha.1/seedfaker-linux-x64.tar.gz"
      sha256 "b2ddeb7cb03afed3823bb0fd561077affd1800cc776e8465668778d3e78abc06"
    end
  end

  def install
    bin.install "seedfaker"
  end

  test do
    assert_match "seedfaker", shell_output("#{bin}/seedfaker --version")
  end
end
