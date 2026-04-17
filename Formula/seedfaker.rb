# typed: false
# frozen_string_literal: true

class Seedfaker < Formula
  desc "Deterministic synthetic data generator"
  homepage "https://github.com/opendsr-std/seedfaker"
  license "MIT"
  version "0.3.0-alpha.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opendsr-std/seedfaker/releases/download/v0.3.0-alpha.2/seedfaker-darwin-arm64.tar.gz"
      sha256 "2605c990c43412416023d32cfbb421c2bcbcf1a42a643606cf36cfc442406e38"
    else
      url "https://github.com/opendsr-std/seedfaker/releases/download/v0.3.0-alpha.2/seedfaker-darwin-x64.tar.gz"
      sha256 "f66043e1f1f38f9d84e8915c82a0848894fb67fe38594ce5973287b2df4bcf64"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opendsr-std/seedfaker/releases/download/v0.3.0-alpha.2/seedfaker-linux-arm64.tar.gz"
      sha256 "21cb7170e0dd6377c190b9eab641202229e7d159f5322517fc01c889d24cdbfd"
    else
      url "https://github.com/opendsr-std/seedfaker/releases/download/v0.3.0-alpha.2/seedfaker-linux-x64.tar.gz"
      sha256 "0a7fab92b123e95c08934d6e09fd08092692bdaf97cf4975a7785ee40ac2a36e"
    end
  end

  def install
    bin.install "seedfaker"
  end

  test do
    assert_match "seedfaker", shell_output("#{bin}/seedfaker --version")
  end
end
