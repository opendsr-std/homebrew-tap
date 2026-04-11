# typed: false
# frozen_string_literal: true

class Seedfaker < Formula
  desc "Deterministic synthetic data generator"
  homepage "https://github.com/opendsr-std/seedfaker"
  license "MIT"
  version "0.2.0-alpha.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opendsr-std/seedfaker/releases/download/v0.2.0-alpha.2/seedfaker-darwin-arm64.tar.gz"
      sha256 "dc971bb8d7c5720cec199bc218472926d75ad1e14123b5265b0b465b4acde942"
    else
      url "https://github.com/opendsr-std/seedfaker/releases/download/v0.2.0-alpha.2/seedfaker-darwin-x64.tar.gz"
      sha256 "70e09908ef96cc01f86e8b2c30ac6f70dc97ed222fa48227fbb15bf306aa4e35"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opendsr-std/seedfaker/releases/download/v0.2.0-alpha.2/seedfaker-linux-arm64.tar.gz"
      sha256 "ba35cf24adb6a13a38e956b5e50c53e2bb1820b872bb07965ff863d411db06f7"
    else
      url "https://github.com/opendsr-std/seedfaker/releases/download/v0.2.0-alpha.2/seedfaker-linux-x64.tar.gz"
      sha256 "352e92d285f03f72b413c59843f77da4a21c69d059dc574c7b9bf8cbcb658806"
    end
  end

  def install
    bin.install "seedfaker"
  end

  test do
    assert_match "seedfaker", shell_output("#{bin}/seedfaker --version")
  end
end
