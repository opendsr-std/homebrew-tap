# typed: false
# frozen_string_literal: true

class Seedfaker < Formula
  desc "Deterministic synthetic data generator"
  homepage "https://github.com/opendsr-std/seedfaker"
  license "MIT"
  version "0.3.0-alpha.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opendsr-std/seedfaker/releases/download/v0.3.0-alpha.1/seedfaker-darwin-arm64.tar.gz"
      sha256 "77b9cb598571de9b967b5f52952ce4a86718309191079f5726ce8f081087fc55"
    else
      url "https://github.com/opendsr-std/seedfaker/releases/download/v0.3.0-alpha.1/seedfaker-darwin-x64.tar.gz"
      sha256 "b9eb41b96ac208b53b6e7d4d8e811a1efd195fc2c78d097591a039d6475d3695"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opendsr-std/seedfaker/releases/download/v0.3.0-alpha.1/seedfaker-linux-arm64.tar.gz"
      sha256 "886fda7d8ad3dd672ffbebb3f0b43138a10b3d2b40d3e46fc42ef449ce2a1087"
    else
      url "https://github.com/opendsr-std/seedfaker/releases/download/v0.3.0-alpha.1/seedfaker-linux-x64.tar.gz"
      sha256 "c5e047fad9d7fa04d6c83c88ecd7ae5504c6cc475dad36728a51165533ba2f22"
    end
  end

  def install
    bin.install "seedfaker"
  end

  test do
    assert_match "seedfaker", shell_output("#{bin}/seedfaker --version")
  end
end
